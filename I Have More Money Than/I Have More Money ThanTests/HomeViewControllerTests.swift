//
//  I_Have_More_Money_ThanTests.swift
//  I Have More Money ThanTests
//
//  Created by Scott Clampet on 9/6/19.
//  Copyright © 2019 Scott Clampet. All rights reserved.
//

import XCTest
@testable import I_Have_More_Money_Than

class HomeViewControllerTests: XCTestCase {
    
    var homeController: HomeViewController!
    var detailsScreen: AccountDetailsViewController!

    override func setUp() {
        let layout = UICollectionViewFlowLayout()
        homeController = HomeViewController(collectionViewLayout: layout)
        detailsScreen = AccountDetailsViewController()
    }

    override func tearDown() {
        homeController = nil
        detailsScreen = nil
    }
    
    func testDetailsBackgroundColorIsRedForNegativeROI() {
        let account = Account(id: 1, name: "test", amount: 23455, ROI: -12)
        let red = UIColor.rgb(red: 255, green: 77, blue: 77, alpha: 1)
        
        detailsScreen.account = account
        
        XCTAssertTrue(detailsScreen.view.backgroundColor == red)
    }
    
    func testDetailsBackgroundColorIsGreenForPositiveROI() {
        let account = Account(id: 1, name: "test", amount: 23455, ROI: 12)
        let green = UIColor.rgb(red: 99, green: 216, blue: 99, alpha: 1)
        
        detailsScreen.account = account
        
        XCTAssertTrue(detailsScreen.view.backgroundColor == green)
    }

}
