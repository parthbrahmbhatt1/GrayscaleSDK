//
//  GrayscaleSDKTests.swift
//  GrayscaleSDKTests
//
//  Created by Brahmbhatt, Parth (P.) on 4/27/25.
//

import XCTest
@testable import GrayscaleSDK

final class GrayscaleSDKTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    // Test Nil CGImage (Invalid Image)
    
    func testConvertImageWithNilCGImageReturnsNil() {
        let image = UIImage()
        let grayImage = GrayscaleImageConverter.convertToGrayscale(image: image)
        XCTAssertNil(grayImage)
    }
    
    // Test Normal Image Conversion
    
    func testConvertValidImageToGrayscale() {
        let bundle = Bundle(for: type(of: self))
        guard let path = bundle.path(forResource: "test_image", ofType: "jpg"),
              let image = UIImage(contentsOfFile: path) else {
            XCTFail("Could not load sample image")
            return
        }

        let grayImage = GrayscaleImageConverter.convertToGrayscale(image: image)
        XCTAssertNotNil(grayImage)
    }

}
