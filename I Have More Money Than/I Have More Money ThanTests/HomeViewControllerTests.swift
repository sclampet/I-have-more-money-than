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
    let accountsList = [
        Account(id: 1, name: "Royal Bank of Canada", imageName: "bankCanada", amount: 234123, ROI: 12),
        Account(id: 2, name: "Cayman Islands", imageName: "bankCanada", amount: 5432, ROI: 12),
        Account(id: 3, name: "Berkshire", imageName: "berkshire", amount: 43454345, ROI: -12),
    ]

    override func setUp() {
        let layout = UICollectionViewFlowLayout()
        homeController = HomeViewController(collectionViewLayout: layout)
    }

    override func tearDown() {
        homeController = nil
    }

}
