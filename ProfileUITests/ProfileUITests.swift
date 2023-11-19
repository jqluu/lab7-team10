//
//  ProfileUITests.swift
//  ProfileUITests
//
// 
//

import XCTest

class ProfileUITests: XCTestCase {
    func testAddNewImage() throws {
        let app = XCUIApplication()
        app.launch()
        // Checks if new image was added
        XCTAssertGreaterThan(app.images.count, 1)
    }
}
