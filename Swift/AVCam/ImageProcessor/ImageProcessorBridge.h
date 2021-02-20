//
//  ImageProcessor.h
//  AVCam Swift
//
//  Created by Chunjong Park on 2/18/21.
//  Copyright © 2021 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageProcessorBridge : NSObject

+ (UIImage *) toGrayImage: (UIImage *) image;

@end
