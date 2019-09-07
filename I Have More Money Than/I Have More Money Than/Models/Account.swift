//
//  Account.swift
//  I Have More Money Than
//
//  Created by Scott Clampet on 9/6/19.
//  Copyright © 2019 Scott Clampet. All rights reserved.
//

import Foundation

struct Account: Decodable {
    let id: Int
    let name: String
    let amount: Float
    let ROI: Float
}
