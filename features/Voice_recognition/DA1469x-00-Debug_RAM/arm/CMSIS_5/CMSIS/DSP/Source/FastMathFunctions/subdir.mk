################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c \
../arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c \
../arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c \
../arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c \
../arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c \
../arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c \
../arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c \
../arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c \
../arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c \
../arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c 

OBJS += \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.o \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.o \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.o \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.o \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.o \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.o \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.o \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.o \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.o \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.o 

C_DEPS += \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.d \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.d \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.d \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.d \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.d \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.d \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.d \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.d \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.d \
./arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.d 


# Each subdirectory must supply rules for building sources it contributes
arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/%.o: ../arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -Ddg_configDEVICE=DA14699_00 -DARM_MATH_ARMV8MML -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\middleware\adapters\include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\util\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\memory\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\config" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\middleware\config" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\free_rtos\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\free_rtos\portable\GCC\DA1469x" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\middleware\osal" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\system\sys_man\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\peripherals\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\snc\include" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\snc\src" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party\gemmlowp" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\PrivateInclude" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\NN\Include" -include"C:\BLE_SDK10_examples\features\Voice_recognition\config\custom_config_ram.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


