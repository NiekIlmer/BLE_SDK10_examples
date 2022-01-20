/*
 * audio_acquisition.h
 *
 *  Created on: Dec 15, 2021
 *      Author: nilmer
 */

#ifndef INCLUDE_AUDIO_ACQUISITION_H_
#define INCLUDE_AUDIO_ACQUISITION_H_

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
/**
 * @brief required data from the context of the audio task
 */
typedef struct {
        void *audio_path;   //pointer to the APU open audio path
        OS_TASK audio_task;//the OS TASK identifier
        uint32_t available_to_read; //bytes available for audio transfer
        int audio_task_wdog_id;
} context_acquire_apu_t;

extern context_acquire_apu_t context_acquire_apu;

void audio_acquisition_task( void *pvParameters );
void audio_buffer_ready_cb(sys_audio_mgr_buffer_data_block_t *buffer, void *app_ud);

#endif /* INCLUDE_AUDIO_ACQUISITION_H_ */
