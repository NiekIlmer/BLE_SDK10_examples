################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c \
../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c 

OBJS += \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.o \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o 

C_DEPS += \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.d \
./arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.d 


# Each subdirectory must supply rules for building sources it contributes
arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/%.o: ../arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -DARM_MATH_ARMV8MML -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\util\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\config" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\middleware\config" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party\gemmlowp" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\PrivateInclude" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\NN\Include" -include"C:\BLE_SDK10_examples\features\Voice_recognition\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


