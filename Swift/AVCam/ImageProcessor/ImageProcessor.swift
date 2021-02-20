//
//  ImageProcessor.swift
//  AVCam
//
//  Created by Chunjong Park on 2/17/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit

class ImageProcessor {
    
    var context: CIContext

    init () {
        self.context = CIContext()
    }
    
    func imageFromSampleBuffer(sampleBuffer: CMSampleBuffer) -> UIImage? {
        guard let imageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return nil }
        let ciImage = CIImage(cvPixelBuffer: imageBuffer)
        let context = CIContext()
        guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else { return nil }
        print(cgImage.width)
        var uiimage =  UIImage(cgImage: cgImage)
        uiimage = ImageProcessorBridge.toGrayImage(uiimage)
        print("converted!")
        return uiimage
    }
  
}
