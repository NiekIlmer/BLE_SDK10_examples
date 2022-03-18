################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/tensorflow/lite/micro/kernels/activations.cc \
../tensorflow/tensorflow/lite/micro/kernels/add.cc \
../tensorflow/tensorflow/lite/micro/kernels/arg_min_max.cc \
../tensorflow/tensorflow/lite/micro/kernels/ceil.cc \
../tensorflow/tensorflow/lite/micro/kernels/circular_buffer.cc \
../tensorflow/tensorflow/lite/micro/kernels/comparisons.cc \
../tensorflow/tensorflow/lite/micro/kernels/concatenation.cc \
../tensorflow/tensorflow/lite/micro/kernels/conv.cc \
../tensorflow/tensorflow/lite/micro/kernels/depthwise_conv.cc \
../tensorflow/tensorflow/lite/micro/kernels/dequantize.cc \
../tensorflow/tensorflow/lite/micro/kernels/elementwise.cc \
../tensorflow/tensorflow/lite/micro/kernels/ethosu.cc \
../tensorflow/tensorflow/lite/micro/kernels/floor.cc \
../tensorflow/tensorflow/lite/micro/kernels/fully_connected.cc \
../tensorflow/tensorflow/lite/micro/kernels/hard_swish.cc \
../tensorflow/tensorflow/lite/micro/kernels/kernel_runner.cc \
../tensorflow/tensorflow/lite/micro/kernels/kernel_util.cc \
../tensorflow/tensorflow/lite/micro/kernels/l2norm.cc \
../tensorflow/tensorflow/lite/micro/kernels/logical.cc \
../tensorflow/tensorflow/lite/micro/kernels/logistic.cc \
../tensorflow/tensorflow/lite/micro/kernels/maximum_minimum.cc \
../tensorflow/tensorflow/lite/micro/kernels/mul.cc \
../tensorflow/tensorflow/lite/micro/kernels/neg.cc \
../tensorflow/tensorflow/lite/micro/kernels/pack.cc \
../tensorflow/tensorflow/lite/micro/kernels/pad.cc \
../tensorflow/tensorflow/lite/micro/kernels/pooling.cc \
../tensorflow/tensorflow/lite/micro/kernels/prelu.cc \
../tensorflow/tensorflow/lite/micro/kernels/quantize.cc \
../tensorflow/tensorflow/lite/micro/kernels/reduce.cc \
../tensorflow/tensorflow/lite/micro/kernels/reshape.cc \
../tensorflow/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc \
../tensorflow/tensorflow/lite/micro/kernels/round.cc \
../tensorflow/tensorflow/lite/micro/kernels/softmax.cc \
../tensorflow/tensorflow/lite/micro/kernels/split.cc \
../tensorflow/tensorflow/lite/micro/kernels/strided_slice.cc \
../tensorflow/tensorflow/lite/micro/kernels/sub.cc \
../tensorflow/tensorflow/lite/micro/kernels/svdf.cc \
../tensorflow/tensorflow/lite/micro/kernels/tanh.cc \
../tensorflow/tensorflow/lite/micro/kernels/unpack.cc 

CC_DEPS += \
./tensorflow/tensorflow/lite/micro/kernels/activations.d \
./tensorflow/tensorflow/lite/micro/kernels/add.d \
./tensorflow/tensorflow/lite/micro/kernels/arg_min_max.d \
./tensorflow/tensorflow/lite/micro/kernels/ceil.d \
./tensorflow/tensorflow/lite/micro/kernels/circular_buffer.d \
./tensorflow/tensorflow/lite/micro/kernels/comparisons.d \
./tensorflow/tensorflow/lite/micro/kernels/concatenation.d \
./tensorflow/tensorflow/lite/micro/kernels/conv.d \
./tensorflow/tensorflow/lite/micro/kernels/depthwise_conv.d \
./tensorflow/tensorflow/lite/micro/kernels/dequantize.d \
./tensorflow/tensorflow/lite/micro/kernels/elementwise.d \
./tensorflow/tensorflow/lite/micro/kernels/ethosu.d \
./tensorflow/tensorflow/lite/micro/kernels/floor.d \
./tensorflow/tensorflow/lite/micro/kernels/fully_connected.d \
./tensorflow/tensorflow/lite/micro/kernels/hard_swish.d \
./tensorflow/tensorflow/lite/micro/kernels/kernel_runner.d \
./tensorflow/tensorflow/lite/micro/kernels/kernel_util.d \
./tensorflow/tensorflow/lite/micro/kernels/l2norm.d \
./tensorflow/tensorflow/lite/micro/kernels/logical.d \
./tensorflow/tensorflow/lite/micro/kernels/logistic.d \
./tensorflow/tensorflow/lite/micro/kernels/maximum_minimum.d \
./tensorflow/tensorflow/lite/micro/kernels/mul.d \
./tensorflow/tensorflow/lite/micro/kernels/neg.d \
./tensorflow/tensorflow/lite/micro/kernels/pack.d \
./tensorflow/tensorflow/lite/micro/kernels/pad.d \
./tensorflow/tensorflow/lite/micro/kernels/pooling.d \
./tensorflow/tensorflow/lite/micro/kernels/prelu.d \
./tensorflow/tensorflow/lite/micro/kernels/quantize.d \
./tensorflow/tensorflow/lite/micro/kernels/reduce.d \
./tensorflow/tensorflow/lite/micro/kernels/reshape.d \
./tensorflow/tensorflow/lite/micro/kernels/resize_nearest_neighbor.d \
./tensorflow/tensorflow/lite/micro/kernels/round.d \
./tensorflow/tensorflow/lite/micro/kernels/softmax.d \
./tensorflow/tensorflow/lite/micro/kernels/split.d \
./tensorflow/tensorflow/lite/micro/kernels/strided_slice.d \
./tensorflow/tensorflow/lite/micro/kernels/sub.d \
./tensorflow/tensorflow/lite/micro/kernels/svdf.d \
./tensorflow/tensorflow/lite/micro/kernels/tanh.d \
./tensorflow/tensorflow/lite/micro/kernels/unpack.d 

OBJS += \
./tensorflow/tensorflow/lite/micro/kernels/activations.o \
./tensorflow/tensorflow/lite/micro/kernels/add.o \
./tensorflow/tensorflow/lite/micro/kernels/arg_min_max.o \
./tensorflow/tensorflow/lite/micro/kernels/ceil.o \
./tensorflow/tensorflow/lite/micro/kernels/circular_buffer.o \
./tensorflow/tensorflow/lite/micro/kernels/comparisons.o \
./tensorflow/tensorflow/lite/micro/kernels/concatenation.o \
./tensorflow/tensorflow/lite/micro/kernels/conv.o \
./tensorflow/tensorflow/lite/micro/kernels/depthwise_conv.o \
./tensorflow/tensorflow/lite/micro/kernels/dequantize.o \
./tensorflow/tensorflow/lite/micro/kernels/elementwise.o \
./tensorflow/tensorflow/lite/micro/kernels/ethosu.o \
./tensorflow/tensorflow/lite/micro/kernels/floor.o \
./tensorflow/tensorflow/lite/micro/kernels/fully_connected.o \
./tensorflow/tensorflow/lite/micro/kernels/hard_swish.o \
./tensorflow/tensorflow/lite/micro/kernels/kernel_runner.o \
./tensorflow/tensorflow/lite/micro/kernels/kernel_util.o \
./tensorflow/tensorflow/lite/micro/kernels/l2norm.o \
./tensorflow/tensorflow/lite/micro/kernels/logical.o \
./tensorflow/tensorflow/lite/micro/kernels/logistic.o \
./tensorflow/tensorflow/lite/micro/kernels/maximum_minimum.o \
./tensorflow/tensorflow/lite/micro/kernels/mul.o \
./tensorflow/tensorflow/lite/micro/kernels/neg.o \
./tensorflow/tensorflow/lite/micro/kernels/pack.o \
./tensorflow/tensorflow/lite/micro/kernels/pad.o \
./tensorflow/tensorflow/lite/micro/kernels/pooling.o \
./tensorflow/tensorflow/lite/micro/kernels/prelu.o \
./tensorflow/tensorflow/lite/micro/kernels/quantize.o \
./tensorflow/tensorflow/lite/micro/kernels/reduce.o \
./tensorflow/tensorflow/lite/micro/kernels/reshape.o \
./tensorflow/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o \
./tensorflow/tensorflow/lite/micro/kernels/round.o \
./tensorflow/tensorflow/lite/micro/kernels/softmax.o \
./tensorflow/tensorflow/lite/micro/kernels/split.o \
./tensorflow/tensorflow/lite/micro/kernels/strided_slice.o \
./tensorflow/tensorflow/lite/micro/kernels/sub.o \
./tensorflow/tensorflow/lite/micro/kernels/svdf.o \
./tensorflow/tensorflow/lite/micro/kernels/tanh.o \
./tensorflow/tensorflow/lite/micro/kernels/unpack.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/tensorflow/lite/micro/kernels/%.o: ../tensorflow/tensorflow/lite/micro/kernels/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party\gemmlowp" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\PrivateInclude" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\NN\Include" -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


