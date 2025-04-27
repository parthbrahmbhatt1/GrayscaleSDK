//
//  GrayscaleConverter.hpp
//  GrayscaleSDK
//
//  Created by Brahmbhatt, Parth (P.) on 4/27/25.
//

#ifndef GrayscaleConverter_hpp
#define GrayscaleConverter_hpp

#include <stdint.h>

extern "C" void convertToGrayscale(const uint8_t* inputData, int width, int height, uint8_t* outputData);

#endif
