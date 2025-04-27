//
//  UIImage+Helper.swift
//  GrayscaleSDKTests
//
//  Created by Brahmbhatt, Parth (P.) on 4/27/25.
//

import Foundation
import UIKit

func createImageWithColor(color: UIColor, size: CGSize) -> UIImage {
    let rect = CGRect(origin: .zero, size: size)
    UIGraphicsBeginImageContextWithOptions(size, false, 1)
    color.setFill()
    UIRectFill(rect)
    let image = UIGraphicsGetImageFromCurrentImageContext()!
    UIGraphicsEndImageContext()
    return image
}
