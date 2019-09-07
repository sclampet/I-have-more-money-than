//
//  I_Have_More_Money_ThanUITests.swift
//  I Have More Money ThanUITests
//
//  Created by Scott Clampet on 9/6/19.
//  Copyright © 2019 Scott Clampet. All rights reserved.
//

import XCTest

class I_Have_More_Money_ThanUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        app = XCUIApplication()
        app.launch()
    }

    override func tearDown() {
        
    }
    
//    func testOnAccountCellTapNavigation() {
//        let isDisplayingHomeScreen = app.otherElements.containing(.navigationBar, identifier:"I_Have_More_Money_Than.HomeViewController").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.exists
//        
//        XCTAssertTrue(isDisplayingHomeScreen)
//        
//        app.collectionViews.cells.containing(.image, identifier:"Royal Bank of Canada").children(matching: .other).element.tap()
//        
//        let isDisplayingDetailsScreen = app.otherElements.containing(.navigationBar, identifier:"I_Have_More_Money_Than.AccountDetailsView").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.exists
//        
//        XCTAssertTrue(isDisplayingDetailsScreen)
//        
//    }

}
