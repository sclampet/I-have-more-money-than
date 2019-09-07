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
    
    func testSetupNavBar() {
        guard let navBar = homeController.navigationController?.navigationBar else { return }
        let emptyUIImage = UIImage()
        
        XCTAssertTrue(navBar.shadowImage == emptyUIImage)
        XCTAssertTrue(navBar.backgroundColor == UIColor.white)
        XCTAssertTrue(navBar.isTranslucent == false)
    }
    
    func testAccountDidSetImageViewImage() {
        let account = Account(id: 1, name: "test", amount: 12345, ROI: 10)
        
        let cell = AccountCell()
        cell.account = account
        
        XCTAssertTrue(cell.imageView.image == UIImage(named: "test"))
    }
    
    func testHeaderLabelText() {
        let header = HeaderView()
        
        XCTAssertTrue(header.titleLabel.text == "Accounts")
        XCTAssertTrue(header.subtitleLabel.text == "Congratulations on being wealthier than the following friends")
    }

}
