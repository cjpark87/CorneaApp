//
//  ImageProcessorBridge.m
//  AVCam
//
//  Created by Chunjong Park on 2/18/21.
//  Copyright © 2021 Apple. All rights reserved.
//

#ifdef __cplusplus
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

#import <opencv2/opencv.hpp>
#import <opencv2/imgcodecs/ios.h>
#import <Foundation/Foundation.h>

#import "ImageProcessorBridge.h"

#pragma clang pop
#endif

@interface ImageProcessorBridge ()
@end

@implementation ImageProcessorBridge

+ (UIImage *) toGrayImage: (UIImage *) input {
    cv::Mat inputMat;
    cv::Mat outputMat;
    //cv::cvtColor(input, output, CV_RGBA2RGB);
    UIImageToMat(input, inputMat);
    cv::cvtColor(inputMat, outputMat, cv::COLOR_RGBA2GRAY);
    UIImage* uiimage = MatToUIImage(outputMat);
    
    inputMat.release();
    outputMat.release();
    
    return uiimage;
}

@end
