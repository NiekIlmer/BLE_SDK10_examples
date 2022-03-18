################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/tensorflow/lite/micro/all_ops_resolver.cc \
../tensorflow/tensorflow/lite/micro/debug_log.cc \
../tensorflow/tensorflow/lite/micro/memory_helpers.cc \
../tensorflow/tensorflow/lite/micro/micro_allocator.cc \
../tensorflow/tensorflow/lite/micro/micro_error_reporter.cc \
../tensorflow/tensorflow/lite/micro/micro_interpreter.cc \
../tensorflow/tensorflow/lite/micro/micro_optional_debug_tools.cc \
../tensorflow/tensorflow/lite/micro/micro_profiler.cc \
../tensorflow/tensorflow/lite/micro/micro_string.cc \
../tensorflow/tensorflow/lite/micro/micro_time.cc \
../tensorflow/tensorflow/lite/micro/micro_utils.cc \
../tensorflow/tensorflow/lite/micro/recording_micro_allocator.cc \
../tensorflow/tensorflow/lite/micro/recording_simple_memory_allocator.cc \
../tensorflow/tensorflow/lite/micro/simple_memory_allocator.cc \
../tensorflow/tensorflow/lite/micro/test_helpers.cc 

CC_DEPS += \
./tensorflow/tensorflow/lite/micro/all_ops_resolver.d \
./tensorflow/tensorflow/lite/micro/debug_log.d \
./tensorflow/tensorflow/lite/micro/memory_helpers.d \
./tensorflow/tensorflow/lite/micro/micro_allocator.d \
./tensorflow/tensorflow/lite/micro/micro_error_reporter.d \
./tensorflow/tensorflow/lite/micro/micro_interpreter.d \
./tensorflow/tensorflow/lite/micro/micro_optional_debug_tools.d \
./tensorflow/tensorflow/lite/micro/micro_profiler.d \
./tensorflow/tensorflow/lite/micro/micro_string.d \
./tensorflow/tensorflow/lite/micro/micro_time.d \
./tensorflow/tensorflow/lite/micro/micro_utils.d \
./tensorflow/tensorflow/lite/micro/recording_micro_allocator.d \
./tensorflow/tensorflow/lite/micro/recording_simple_memory_allocator.d \
./tensorflow/tensorflow/lite/micro/simple_memory_allocator.d \
./tensorflow/tensorflow/lite/micro/test_helpers.d 

OBJS += \
./tensorflow/tensorflow/lite/micro/all_ops_resolver.o \
./tensorflow/tensorflow/lite/micro/debug_log.o \
./tensorflow/tensorflow/lite/micro/memory_helpers.o \
./tensorflow/tensorflow/lite/micro/micro_allocator.o \
./tensorflow/tensorflow/lite/micro/micro_error_reporter.o \
./tensorflow/tensorflow/lite/micro/micro_interpreter.o \
./tensorflow/tensorflow/lite/micro/micro_optional_debug_tools.o \
./tensorflow/tensorflow/lite/micro/micro_profiler.o \
./tensorflow/tensorflow/lite/micro/micro_string.o \
./tensorflow/tensorflow/lite/micro/micro_time.o \
./tensorflow/tensorflow/lite/micro/micro_utils.o \
./tensorflow/tensorflow/lite/micro/recording_micro_allocator.o \
./tensorflow/tensorflow/lite/micro/recording_simple_memory_allocator.o \
./tensorflow/tensorflow/lite/micro/simple_memory_allocator.o \
./tensorflow/tensorflow/lite/micro/test_helpers.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/tensorflow/lite/micro/%.o: ../tensorflow/tensorflow/lite/micro/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party\gemmlowp" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\PrivateInclude" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\NN\Include" -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


