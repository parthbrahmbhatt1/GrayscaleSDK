**GrayscaleSDK**:

GrayscaleSDK is a lightweight, modular iOS SDK written in Swift and C++ using OpenCV, designed to convert color images to grayscale. It can be integrated into any iOS app and includes a SwiftUI-based sample app.


App Design & Architecture:

- **Language Interop**: 
  - The SDK uses a combination of Swift, Objective-C++, and C++ (with OpenCV) for image processing.
  - Swift handles the public API and C++ performs the grayscale conversion.

## Build & Run Instructions

### SDK

 1. Install CocoaPods. Go to your project directory and run pod install command in Terminal.
 2. Make sure to add Pods framewok under Frameworks, Library and Embedded Content. 
 3. Open `GrayscaleSDK.xcworkspace` in Xcode.
 4. Select the `GrayscaleSDK` scheme.
 5. Choose a simulator or device.
 6. Build using **Product > Build** or `Cmd + B`.

## Testing

### Unit Tests

To run unit tests:

1. Open the project in Xcode.
2. Select the `GrayscaleSDK` scheme.
3. Use **Product > Test** or `Cmd + U`.

### Automation Script

Use the `build_and_test.sh` script to automate build & test:

```bash
chmod +x build_and_test.sh
./build_and_test.sh

## Future Improvemnts
  1. Batch processing of multiple images
  2. Support for different grayscale algorithms
  3. Benchmarking and optimization of image conversion
  4. CI/CD integration using GitHub Actions or Xcode Cloud
