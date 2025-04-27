//
//  GrayscaleImageConverter.swift
//  GrayscaleSDK
//
//  Created by Brahmbhatt, Parth (P.) on 4/27/25.
//

import UIKit

public class GrayscaleImageConverter {
    public static func convertToGrayscale(image: UIImage) -> UIImage? {
        guard let cgImage = image.cgImage else { return nil }
        let width = Int(cgImage.width)
        let height = Int(cgImage.height)
        let bytesPerPixel = 4
        let bytesPerRow = width * bytesPerPixel
        let totalBytes = bytesPerRow * height

        var rgbaData = [UInt8](repeating: 0, count: totalBytes)

        guard let context = CGContext(
            data: &rgbaData,
            width: width,
            height: height,
            bitsPerComponent: 8,
            bytesPerRow: bytesPerRow,
            space: CGColorSpaceCreateDeviceRGB(),
            bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue
        ) else { return nil }

        context.draw(cgImage, in: CGRect(x: 0, y: 0, width: width, height: height))

        let grayData = GrayscaleWrapper.convertToGrayscale(withRGBAData: NSData(bytes: &rgbaData, length: rgbaData.count) as Data, width: Int32(width), height: Int32(height))

        guard let provider = CGDataProvider(data: grayData! as CFData) else { return nil }

        if let grayImage = CGImage(
            width: width,
            height: height,
            bitsPerComponent: 8,
            bitsPerPixel: 8,
            bytesPerRow: width,
            space: CGColorSpaceCreateDeviceGray(),
            bitmapInfo: CGBitmapInfo(rawValue: 0),
            provider: provider,
            decode: nil,
            shouldInterpolate: false,
            intent: .defaultIntent
        ) {
            return UIImage(cgImage: grayImage)
        }

        return nil
    }
}
