**GrayscaleApp**: 

App Design & Architecture:

- **MVVM Pattern**:
  - The GrayscaleApp app is structured using MVVM for clarity and separation of concerns.
  - `ProcessedImage` is a lightweight model holding original and grayscale images.

- **Thread Safety**:
  - Image processing is performed on the main thread only after proper validation to avoid memory crashes.


