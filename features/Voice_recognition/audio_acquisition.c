/*
 * audio_aquisition.c
 *
 *  Created on: Dec 15, 2021
 *      Author: nilmer
 */

#include <string.h>
#include <stdio.h>
#include <stdbool.h>

#include "osal.h"
#include "resmgmt.h"
#include "hw_cpm.h"
#include "hw_gpio.h"
#include "hw_watchdog.h"
#include "sys_clock_mgr.h"
#include "sys_power_mgr.h"
#include "sys_audio_mgr.h"
#include "hw_pdm.h"
#include "hw_apu_src.h"
#include "audio_acquisition.h"
#include "audio_iface.h"
#include "arm_math.h"

/**
 * Globals
 */

#define SAMPLES                 512
#define FFT_SIZE                SAMPLES / 2

float32_t Input[SAMPLES];
float32_t Output[SAMPLES];
context_acquire_apu_t context_acquire_apu;


//static audio_quality_t _memory_recording = {
//        .freq = RECORDING_SAMPLE_RATE,
//        .bits = PCM_BIT_DEPTH,
//        .channels = AUDIO_CHANNEL_STEREO,
//};
//
//static audio_dma_config_t _dma_rec = {
//        .buff_l = NULL,
//        .buff_r = NULL,
//        .dma_l = AUDIO_DMA_OUT_L, //dma recording path is IN to the system, but OUT to resampler
//        .dma_r = AUDIO_DMA_OUT_R,
//        .buff_len = DEMO_CHANNEL_DATA_BUF_TOTAL_SIZE,
//        .buffer_len_cb = DEMO_CHANNEL_DATA_BUF_CB_SIZE,
//        .cb = audio_buffer_ready_cb,
//        .ud = &context_acquire_apu,
//        .circular = true,
//};
//
//
//static audio_iface_t _audio;
//
//
///**
// * @brief Try to allocate size bytes from the heap.
// * @param allocation size
// * @return pointer to newly allocated memory, or NULL on failure.
// * This pointer should be freed with free()
// */
//static uint8_t* try_alloc(uint32_t size)
//{
//        if (size > OS_GET_FREE_HEAP_SIZE()) {
//                printf("Not enough heap size %ld, reduce channels or memory buffer", size);
//                return NULL;
//        }
//        return (uint8_t*)OS_MALLOC(size);
//}

typedef struct {
        void *audio_dev;            //resource
        sys_audio_device_t dev_in;  //input resource
        sys_audio_device_t dev_out; //output resource
        int available_to_read;
        OS_TASK audio_task;
} context_demo_apu_t;

context_demo_apu_t context_demo_apu;

#define CB_INTERVAL 512 * 2
#define BUFFER_SIZE CB_INTERVAL * 10

#define DMA_CHN_REG(reg, chan) ((volatile uint32 *)(&(reg)) + ((chan) * 8))

void audio_acquisition_task( void *pvParameters )
{
        //OS_TICK_TIME xNextWakeTime;
        //static uint32_t test_counter=0;
        uint32_t notified_value;


        /* Initialise xNextWakeTime - this only needs to be done once. */
        //xNextWakeTime = OS_GET_TICK_COUNT();
//        hw_sys_pd_com_enable();
//        hw_gpio_configure_pin(PDM_DAT_PORT, PDM_DAT_PIN, HW_GPIO_MODE_INPUT, HW_GPIO_FUNC_PDM_DATA, true);
//        hw_gpio_pad_latch_enable(PDM_DAT_PORT, PDM_DAT_PIN);
//        hw_gpio_configure_pin(PDM_CLK_PORT, PDM_CLK_PIN, HW_GPIO_MODE_OUTPUT, HW_GPIO_FUNC_PDM_CLK, true);
//        hw_gpio_pad_latch_enable(PDM_CLK_PORT, PDM_CLK_PIN);
//        hw_pdm_set_mode(HW_PDM_MASTER_MODE);
//        hw_pdm_set_output_channel_config(HW_PDM_CHANNEL_L);
//        hw_pdm_request_clk(1500000);
//        hw_pdm_enable();

//        prepare_pdm(&_audio.pdm_in, AUDIO_CHANNEL_STEREO);
//        _dma_rec.buff_r = (uint16_t * ) try_alloc(DEMO_CHANNEL_DATA_BUF_TOTAL_SIZE);
//        _dma_rec.buff_l = (uint16_t * ) try_alloc(DEMO_CHANNEL_DATA_BUF_TOTAL_SIZE);
//        prepare_dma(&_audio.dma_in, &_memory_recording, &_dma_rec);
//        context_acquire_apu.available_to_read = 0;
//        context_acquire_apu.audio_path = sys_audio_mgr_open(&_audio.pdm_in, &_audio.dma_in);
//        sys_audio_mgr_start(context_acquire_apu.audio_path);
//
//        context_acquire_apu.available_to_read = 0;
        context_demo_apu.available_to_read = 0;
        context_demo_apu.audio_task = OS_GET_CURRENT_TASK();
        /* 1. Initialize default parameters for PDM input */
        sys_audio_mgr_default_pdm_data_init(&context_demo_apu.dev_in, true, MODE_MASTER);

        context_demo_apu.dev_in.pdm_param.clk_frequency = 2000000; // PDM frequency in Hz

        /* 2. Initialize default parameters for memory output */
        sys_audio_mgr_default_memory_data_init(&context_demo_apu.dev_out, false, BUFFER_SIZE,
                                                            CB_INTERVAL,
                                                            audio_buffer_ready_cb,
                                                            &context_demo_apu);

        context_demo_apu.dev_out.memory_param.sample_rate = 8000; //Set memory sample rate in Hz
        context_demo_apu.dev_out.memory_param.bits_depth = 16;    //Set memory bit depth

        // Channels 0, 2, 4 or 6 must be used for SRC output
        context_demo_apu.dev_out.memory_param.dma_channel[0] = HW_DMA_CHANNEL_2;
        context_demo_apu.dev_out.memory_param.dma_channel[1] = HW_DMA_CHANNEL_INVALID;


        for (int i = 0 ; i < (context_demo_apu.dev_out.memory_param.stereo ? 2 : 1); i++) {

                if (context_demo_apu.dev_out.memory_param.dma_channel[i] != HW_DMA_CHANNEL_INVALID) {
                        if (BUFFER_SIZE > OS_GET_FREE_HEAP_SIZE()) {
                                context_demo_apu.dev_out.memory_param.buff_addr[i] = 0;
                                return;
                        }
                        context_demo_apu.dev_out.memory_param.buff_addr[i] = (uint32_t)OS_MALLOC(BUFFER_SIZE);
                }
        }

        /* 3. Open audio interfaces of apu for the required path */
        context_demo_apu.audio_dev = sys_audio_mgr_open(&context_demo_apu.dev_in, &context_demo_apu.dev_out);

        /* 4. Enable resources of the required path */
        sys_audio_mgr_start(context_demo_apu.audio_dev);

        volatile dma_size_t *dma_x_ctrl_reg;
        dma_x_ctrl_reg = (dma_size_t *)DMA_CHN_REG(DMA->DMA0_CTRL_REG, 2);
        *dma_x_ctrl_reg |=  HW_DMA_MODE_CIRCULAR;

        arm_rfft_fast_instance_f32 S;    /* ARM CFFT module */

        for ( ;; ) {
                OS_BASE_TYPE xResult = OS_TASK_NOTIFY_WAIT(OS_TASK_NOTIFY_ALL_BITS,
                        OS_TASK_NOTIFY_ALL_BITS,
                        &notified_value,
                        OS_TASK_NOTIFY_FOREVER);

                OS_ASSERT(xResult == OS_OK);
                if(notified_value & NOTIF_TASK_AQUISITION_DONE){
                        int end = (context_demo_apu.available_to_read%(BUFFER_SIZE/2));
                        if(end == 0){
                                end = BUFFER_SIZE/2;
                        }
                        int start = end - SAMPLES;
                        int j = 0;
                        for(int i = start; i < end; i++){
                                Input[j++] = ((float)(((int16_t*)context_demo_apu.dev_out.memory_param.buff_addr[0])[i]));
                        }

//                        /* Initialize the CFFT/CIFFT module, intFlag = 0, doBitReverse = 1 */
//                        arm_cfft_radix4_init_f32(&S, FFT_SIZE, 0, 1);
//
//                        /* Process the data through the CFFT/CIFFT module */
//                        arm_cfft_radix4_f32(&S, Input);
//
//                        /* Process the data through the Complex Magnitude Module for calculating the magnitude at each bin */
//                        arm_cmplx_mag_f32(Input, Output, FFT_SIZE);
                        arm_rfft_fast_init_f32(&S, FFT_SIZE);
                        arm_rfft_fast_f32(&S, Input, Output, 0);
                        arm_cmplx_mag_f32(Output,Input,FFT_SIZE);
                        for (int i = 0; i < FFT_SIZE/2; i++){
                                printf("%d, ", (int) (Input[i] * 10000.0));
                                fflush(stdout);
                        }
                        printf("0\n");
                        fflush(stdout);
                }
                if(notified_value & NOTIF_TASK_AQUISITION_STOP){
                        context_demo_apu.available_to_read = 0;
//                        /* 5. Stop resources */
//                            sys_audio_mgr_stop(context_demo_apu.audio_dev);
//                        /* 6. Close data path */
//                        sys_audio_mgr_close(context_demo_apu.audio_dev);
//
//                        /* 3. Open audio interfaces of apu for the required path */
//                        context_demo_apu.audio_dev = sys_audio_mgr_open(&context_demo_apu.dev_in, &context_demo_apu.dev_out);
//
//                        /* 4. Enable resources of the required path */
//                        sys_audio_mgr_start(context_demo_apu.audio_dev);

//                        for (int i = 0 ; i < (context_demo_apu.dev_out.memory_param.stereo ? 2 : 1); i++) {
//                            if (context_demo_apu.dev_out.memory_param.buff_addr[i]) {
//                                        OS_FREE((void *)context_demo_apu.dev_out.memory_param.buff_addr[i]);
//                                }
//                        }
                }
        }
}

void audio_buffer_ready_cb(sys_audio_mgr_buffer_data_block_t *buffer, void *app_ud)
{
        context_demo_apu_t *acquire_apu = app_ud;
        /*DMA buffer->buff_len_cb holds number of total bytes transferred from the DMA
         * channel that executed the callback */
        // acquire_apu->available_to_read += buffer->buff_len_cb / 2;
        acquire_apu->available_to_read += CB_INTERVAL / 2;
        OS_TASK_NOTIFY_FROM_ISR(acquire_apu->audio_task, NOTIF_TASK_AQUISITION_DONE, OS_NOTIFY_SET_BITS);
        volatile dma_size_t *dma_x_int_reg;
        volatile dma_size_t *dma_x_idx_reg;
        dma_x_int_reg = (dma_size_t *)DMA_CHN_REG(DMA->DMA0_INT_REG, 2);
        dma_x_idx_reg = (dma_size_t *)DMA_CHN_REG(DMA->DMA0_IDX_REG, 2);
        *dma_x_int_reg = ((*dma_x_idx_reg)/CB_INTERVAL/2 + 1) * CB_INTERVAL/2 - 1;

        /* buffer->buff_len_total holds the number of bytes for transfer per channel
         * Therefore the current bytes available should be compared to the number of DMA channels
         * times the buff_len_total in order to know when the transfer is finished.
         */
        if (acquire_apu->available_to_read >= BUFFER_SIZE / 2) {
                OS_TASK_NOTIFY_FROM_ISR(acquire_apu->audio_task, NOTIF_TASK_AQUISITION_STOP, OS_NOTIFY_SET_BITS);
        }
}

