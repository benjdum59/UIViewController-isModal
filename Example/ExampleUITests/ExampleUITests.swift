//
//  ExampleUITests.swift
//  ExampleUITests
//
//  Created by Benjamin Dumont on 12/02/2016.
//  Copyright © 2016 benjdum59. All rights reserved.
//

import XCTest

extension XCUIElement{
    var hidden : Bool {
        return !(self.exists && self.hittable)
    }
}

class ExampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test0IsRootViewController() {
        let app = XCUIApplication()
        XCTAssert(!app.buttons["Present modally"].hidden)
        XCTAssert(!app.buttons["Present modally"].hidden)
    }
    
    func testIsModalFalse() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        app.buttons["Show"].tap()
        XCTAssert(app.staticTexts["FALSE"].exists)
        XCTAssert(!app.staticTexts["TRUE"].exists)
        XCTAssert(app.buttons["Close"].hidden)

        let backButton = app.navigationBars["Example.View"].childrenMatchingType(.Button).matchingIdentifier("Back").elementBoundByIndex(0)
        XCTAssert(backButton.exists)
        backButton.tap()
        test0IsRootViewController()
    }
    
    func testIsModalTrue() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        app.buttons["Present modally"].tap()
        XCTAssert(app.staticTexts["TRUE"].exists)
        XCTAssert(!app.staticTexts["FALSE"].exists)
        XCTAssert(!app.buttons["Close"].hidden)
        let backButton = app.navigationBars["Example.View"].childrenMatchingType(.Button).matchingIdentifier("Back").elementBoundByIndex(0)
        XCTAssert(!backButton.exists)
        app.buttons["Close"].tap()
        test0IsRootViewController()

        
    }
    

    
}
