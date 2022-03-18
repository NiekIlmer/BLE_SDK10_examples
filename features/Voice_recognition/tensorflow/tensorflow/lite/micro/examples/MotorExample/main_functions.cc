/* Copyright 2018 The TensorFlow Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#include <tensorflow/lite/micro/examples/MotorExample/ModelAndInputImage/motor_model.h>
#include "main_functions.h"

#include "tensorflow/lite/micro/all_ops_resolver.h"
#include "tensorflow/lite/micro/kernels/micro_ops.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/schema/schema_generated.h"
#include "tensorflow/lite/version.h"


namespace {
tflite::ErrorReporter* error_reporter = nullptr;
const tflite::Model* model = nullptr;
tflite::MicroInterpreter* interpreter = nullptr;
TfLiteTensor* model_input = nullptr;
TfLiteTensor* model_output = nullptr;

// Create an area of memory to use for input, output, and intermediate arrays.
// The size of this will depend on the model you're using, and may need to be
// determined by experimentation.
const int kTensorArenaSize = TENSOR_ARENA_SIZE;
uint8_t tensor_arena[kTensorArenaSize];
}  // namespace

int8_t RunInferenceOnTFLite(int8_t input_size, float* input_data, float* AI_inference_result){

#if 1
	// Set up logging. Google style is to avoid globals or statics because of
	// lifetime uncertainty, but since this has a trivial destructor it's okay.
	// NOLINTNEXTLINE(runtime-global-variables)

	static tflite::MicroErrorReporter micro_error_reporter;
	static int8_t init_flag = 0;

	if( init_flag == 0){
	error_reporter = &micro_error_reporter;

	// Map the model into a usable data structure. This doesn't involve any
	// copying or parsing, it's a very lightweight operation.
	model = tflite::GetModel(g_motor_model_data);
	if (model->version() != TFLITE_SCHEMA_VERSION) {
		TF_LITE_REPORT_ERROR(error_reporter,
				"Model provided is schema version %d not equal "
				"to supported version %d.",
				model->version(), TFLITE_SCHEMA_VERSION);
		return -1;
	}
#if defined(ALL_OP_RESOLVER)
	  // This pulls in all the operation implementations we need.
	  // NOLINTNEXTLINE(runtime-global-variables)
	static tflite::AllOpsResolver resolver;
	// Build an interpreter to run the model with.
	//static tflite::MicroInterpreter static_interpreter(
	tflite::MicroInterpreter static_interpreter(
			model, resolver, tensor_arena, kTensorArenaSize, error_reporter);
#else
	// Pull in only the operation implementations we need.
	// This relies on a complete list of all the ops needed by this graph.
	// An easier approach is to just use the AllOpsResolver, but this will
	// incur some penalty in code space for op implementations that are not
	// needed by this graph.
    static tflite::MicroMutableOpResolver<5> micro_op_resolver;  // NOLINT
    micro_op_resolver.AddFullyConnected();
    micro_op_resolver.AddSoftmax();
    micro_op_resolver.AddQuantize();
    micro_op_resolver.AddDequantize();
    micro_op_resolver.AddRelu();

    // Build an interpreter to run the model with.
	static tflite::MicroInterpreter static_interpreter(
			model, micro_op_resolver, tensor_arena, kTensorArenaSize, error_reporter);
#endif

	interpreter = &static_interpreter;


	// Allocate memory from the tensor_arena for the model's tensors.
	TfLiteStatus allocate_status = interpreter->AllocateTensors();
	if (allocate_status != kTfLiteOk) {
		TF_LITE_REPORT_ERROR(error_reporter, "AllocateTensors() failed");
		return -1;
	}

	// Get information about the memory area to use for the model's input.
	// Make sure the input has the properties we expect.
	model_input = interpreter->input(0);
	model_output = interpreter->output(0);

#if !defined(ALL_OP_RESOLVER)
	init_flag = 1;
#endif
	}
#endif
	//place input data
	for (int8_t i = 0; i < input_size; ++i) {
		model_input->data.f[i] = (input_data[i]);
	}

	// Run inference, and report any error
	TfLiteStatus invoke_status = interpreter->Invoke();
	if (invoke_status != kTfLiteOk) {
		TF_LITE_REPORT_ERROR(error_reporter, "Invoke failed");
	    return -1;
	}

	*AI_inference_result = model_output->data.f[0];

	return 0;
}
