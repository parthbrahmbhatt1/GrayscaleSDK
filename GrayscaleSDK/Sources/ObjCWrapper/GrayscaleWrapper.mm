//
//  GrayscaleWrapper.m
//  GrayscaleSDK
//
//  Created by Brahmbhatt, Parth (P.) on 4/27/25.
//

#import "GrayscaleWrapper.h"
#include "GrayscaleConverter.hpp"
 
@implementation GrayscaleWrapper

+ (NSData *)convertToGrayscaleWithRGBAData:(NSData *)rgbaData width:(int)width height:(int)height {
    NSUInteger size = width * height;
    uint8_t* grayBuffer = (uint8_t *)malloc(size);
    convertToGrayscale((const uint8_t *)rgbaData.bytes, width, height, grayBuffer);
    NSData *grayData = [NSData dataWithBytesNoCopy:grayBuffer length:size freeWhenDone:YES];
    return grayData;
}

@end
