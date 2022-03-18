#ifndef MAIN_FUNCTIONS_H_
#define MAIN_FUNCTIONS_H_

#include <stdint.h>

#define NORMALISING_FACTOR         1.0
#define TENSOR_ARENA_SIZE         2 * 1024

//#define ALL_OP_RESOLVER

//#define MUTABLE_OP_RESOLVER

#ifdef __cplusplus
extern "C" {
#endif
//int8_t InitTFLite();
int8_t RunInferenceOnTFLite(int8_t input_size, float* input_data, float* AI_inference_result);
#ifdef __cplusplus
}
#endif

#endif  // TENSORFLOW_LITE_EXPERIMENTAL_MICRO_EXAMPLES_MICRO_SPEECH_MAIN_FUNCTIONS_H_
