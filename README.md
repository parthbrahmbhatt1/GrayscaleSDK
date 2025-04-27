GrayscaleSDK:

GrayscaleSDK is a lightweight, modular iOS SDK written in Swift and C++ using OpenCV, designed to convert color images to grayscale. It can be integrated into any iOS app and includes a SwiftUI-based sample app.

SDK Design & Architecture:

- **Language Interop**: 
  - The SDK uses a combination of Swift, Objective-C++, and C++ (with OpenCV) for image processing.
  - Swift handles the public API, Objective-C++ acts as a bridge, and C++ performs the grayscale conversion.

- **MVVM Pattern**:
  - The sample app is structured using MVVM for clarity and separation of concerns.
  - `ProcessedImage` is a lightweight model holding original and grayscale images.

- **Thread Safety**:
  - Image processing is performed on the main thread only after proper validation to avoid memory crashes.
