################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
C:/0_my_Dialog/NeuralNetworks/DA14695/SDK_10.0.10.118/sdk/bsp/startup/DA1469x/GCC/deepsleep.S \
C:/0_my_Dialog/NeuralNetworks/DA14695/SDK_10.0.10.118/sdk/bsp/startup/DA1469x/GCC/exception_handlers.S \
C:/0_my_Dialog/NeuralNetworks/DA14695/SDK_10.0.10.118/sdk/bsp/startup/DA1469x/GCC/startup_da1469x.S \
C:/0_my_Dialog/NeuralNetworks/DA14695/SDK_10.0.10.118/sdk/bsp/startup/DA1469x/GCC/vector_table_da1469x.S 

OBJS += \
./startup/DA1469x/GCC/deepsleep.o \
./startup/DA1469x/GCC/exception_handlers.o \
./startup/DA1469x/GCC/startup_da1469x.o \
./startup/DA1469x/GCC/vector_table_da1469x.o 

S_UPPER_DEPS += \
./startup/DA1469x/GCC/deepsleep.d \
./startup/DA1469x/GCC/exception_handlers.d \
./startup/DA1469x/GCC/startup_da1469x.d \
./startup/DA1469x/GCC/vector_table_da1469x.d 


# Each subdirectory must supply rules for building sources it contributes
startup/DA1469x/GCC/deepsleep.o: C:/0_my_Dialog/NeuralNetworks/DA14695/SDK_10.0.10.118/sdk/bsp/startup/DA1469x/GCC/deepsleep.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -x assembler-with-cpp -Ddg_configDEVICE=DA14699_00 -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\config" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\middleware\config" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party\gemmlowp" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\PrivateInclude" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\NN\Include" -include"C:\BLE_SDK10_examples\features\Voice_recognition\config\custom_config_ram.h" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup/DA1469x/GCC/exception_handlers.o: C:/0_my_Dialog/NeuralNetworks/DA14695/SDK_10.0.10.118/sdk/bsp/startup/DA1469x/GCC/exception_handlers.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -x assembler-with-cpp -Ddg_configDEVICE=DA14699_00 -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\config" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\middleware\config" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party\gemmlowp" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\PrivateInclude" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\NN\Include" -include"C:\BLE_SDK10_examples\features\Voice_recognition\config\custom_config_ram.h" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup/DA1469x/GCC/startup_da1469x.o: C:/0_my_Dialog/NeuralNetworks/DA14695/SDK_10.0.10.118/sdk/bsp/startup/DA1469x/GCC/startup_da1469x.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -x assembler-with-cpp -Ddg_configDEVICE=DA14699_00 -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\config" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\middleware\config" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party\gemmlowp" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\PrivateInclude" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\NN\Include" -include"C:\BLE_SDK10_examples\features\Voice_recognition\config\custom_config_ram.h" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup/DA1469x/GCC/vector_table_da1469x.o: C:/0_my_Dialog/NeuralNetworks/DA14695/SDK_10.0.10.118/sdk/bsp/startup/DA1469x/GCC/vector_table_da1469x.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Werror -Wall  -g3 -x assembler-with-cpp -Ddg_configDEVICE=DA14699_00 -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\bsp\config" -I"C:\0_my_Dialog\NeuralNetworks\DA14695\SDK_10.0.10.118\sdk\middleware\config" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party" -I"C:\BLE_SDK10_examples\features\Voice_recognition\tensorflow\third_party\gemmlowp" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\PrivateInclude" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\DSP\Include" -I"C:\BLE_SDK10_examples\features\Voice_recognition\arm\CMSIS_5\CMSIS\NN\Include" -include"C:\BLE_SDK10_examples\features\Voice_recognition\config\custom_config_ram.h" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


