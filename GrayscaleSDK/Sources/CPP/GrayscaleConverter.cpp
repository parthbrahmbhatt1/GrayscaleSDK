//
//  GrayscaleConverter.cpp
//  GrayscaleSDK
//
//  Created by Brahmbhatt, Parth (P.) on 4/27/25.
//

#include <opencv2/opencv.hpp>
#include "GrayscaleConverter.hpp"

void convertToGrayscale(const uint8_t* inputData, int width, int height, uint8_t* outputData) {
    cv::Mat inputImage(height, width, CV_8UC4, const_cast<uint8_t*>(inputData));
    cv::Mat grayImage;
    cv::cvtColor(inputImage, grayImage, cv::COLOR_RGBA2GRAY);
    memcpy(outputData, grayImage.data, width * height);
}
