//
//  GrayscaleWrapper.h
//  GrayscaleSDK
//
//  Created by Brahmbhatt, Parth (P.) on 4/27/25.
//

#import <Foundation/Foundation.h>

@interface GrayscaleWrapper : NSObject

+ (NSData *)convertToGrayscaleWithRGBAData:(NSData *)rgbaData width:(int)width height:(int)height;

@end
