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

    override func setUp() {
        let layout = UICollectionViewFlowLayout()
        homeController = HomeViewController(collectionViewLayout: layout)
    }

    override func tearDown() {
        homeController = nil
    }

}
