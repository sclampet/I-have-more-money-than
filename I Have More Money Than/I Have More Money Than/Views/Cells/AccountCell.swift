//
//  AccountCell.swift
//  I Have More Money Than
//
//  Created by Scott Clampet on 9/6/19.
//  Copyright © 2019 Scott Clampet. All rights reserved.
//

import UIKit

class AccountCell: BaseCell {
    
    var account: Account? {
        didSet {
            guard let account = account else {
                return
            }
            
            print(account.name)
        }
    }
    
    override func setupViews() {
        backgroundColor = .cyan
    }
}
