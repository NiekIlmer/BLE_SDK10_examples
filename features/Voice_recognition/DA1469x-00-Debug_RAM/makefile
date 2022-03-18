################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include tensorflow/tensorflow/lite/micro/testing/subdir.mk
-include tensorflow/tensorflow/lite/micro/memory_planner/subdir.mk
-include tensorflow/tensorflow/lite/micro/kernels/subdir.mk
-include tensorflow/tensorflow/lite/micro/examples/MotorExample/ModelAndInputImage/subdir.mk
-include tensorflow/tensorflow/lite/micro/examples/MotorExample/subdir.mk
-include tensorflow/tensorflow/lite/micro/benchmarks/subdir.mk
-include tensorflow/tensorflow/lite/micro/subdir.mk
-include tensorflow/tensorflow/lite/kernels/internal/subdir.mk
-include tensorflow/tensorflow/lite/kernels/subdir.mk
-include tensorflow/tensorflow/lite/core/api/subdir.mk
-include tensorflow/tensorflow/lite/c/subdir.mk
-include startup/DA1469x/GCC/subdir.mk
-include startup/DA1469x/subdir.mk
-include startup/subdir.mk
-include sdk/util/src/subdir.mk
-include sdk/sys_man/subdir.mk
-include sdk/snc/src/subdir.mk
-include sdk/peripherals/src/subdir.mk
-include sdk/osal/subdir.mk
-include sdk/memory/src/subdir.mk
-include sdk/adapters/src/subdir.mk
-include sdk/FreeRTOS/portable/MemMang/subdir.mk
-include sdk/FreeRTOS/portable/GCC/DA1469x/subdir.mk
-include sdk/FreeRTOS/portable/Common/subdir.mk
-include sdk/FreeRTOS/subdir.mk
-include arm/CMSIS_5/CMSIS/NN/Source/SoftmaxFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/NN/Source/ReshapeFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/NN/Source/PoolingFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/NN/Source/FullyConnectedFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/NN/Source/ConcatenationFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/NN/Source/BasicMathFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/NN/Source/ActivationFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/DSP/Source/TransformFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/DSP/Source/SupportFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/DSP/Source/StatisticsFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/DSP/Source/SVMFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/DSP/Source/MatrixFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/DSP/Source/FilteringFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/DSP/Source/DistanceFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/DSP/Source/ControllerFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/DSP/Source/ComplexMathFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/DSP/Source/CommonTables/subdir.mk
-include arm/CMSIS_5/CMSIS/DSP/Source/BayesFunctions/subdir.mk
-include arm/CMSIS_5/CMSIS/DSP/Source/BasicMathFunctions/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
TensorFlow_Lite_Voice_recognition.bin \

SECONDARY_SIZE += \
TensorFlow_Lite_Voice_recognition.siz \


# All Target
all:
	$(MAKE) --no-print-directory pre-build
	$(MAKE) --no-print-directory main-build

# Main-build Target
main-build: TensorFlow_Lite_Voice_recognition.elf secondary-outputs

# Tool invocations
TensorFlow_Lite_Voice_recognition.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross ARM C++ Linker'
	arm-none-eabi-g++ -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -T "C:\BLE_SDK10_examples\features\Voice_recognition/DA1469x-00-Debug_RAM/mem.ld" -T "C:\BLE_SDK10_examples\features\Voice_recognition/DA1469x-00-Debug_RAM/sections.ld" -Xlinker --gc-sections -L"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow" -Wl,-Map,"TensorFlow_Lite_Voice_recognition.map" --specs=nosys.specs -o "TensorFlow_Lite_Voice_recognition.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

TensorFlow_Lite_Voice_recognition.bin: TensorFlow_Lite_Voice_recognition.elf
	@echo 'Invoking: Cross ARM GNU Create Flash Image'
	arm-none-eabi-objcopy -O binary "TensorFlow_Lite_Voice_recognition.elf"  "TensorFlow_Lite_Voice_recognition.bin"
	@echo 'Finished building: $@'
	@echo ' '

TensorFlow_Lite_Voice_recognition.siz: TensorFlow_Lite_Voice_recognition.elf
	@echo 'Invoking: Cross ARM GNU Print Size'
	arm-none-eabi-size --format=berkeley "TensorFlow_Lite_Voice_recognition.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS) TensorFlow_Lite_Voice_recognition.elf
	-@echo ' '

pre-build:
	-@echo 'Generate linker scripts.'
	-make generate_ldscripts DEVICE=DA14699_00 APP_CONFIG_H="C:\BLE_SDK10_examples\features\Voice_recognition\config\custom_config_ram.h" CC="arm-none-eabi-gcc" BSP_CONFIG_DIR="C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\config" MIDDLEWARE_CONFIG_DIR="C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\middleware\config" LDSCRIPT_PATH="C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\ldscripts\non_ble_projects"
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents main-build pre-build

-include ../makefile.targets
