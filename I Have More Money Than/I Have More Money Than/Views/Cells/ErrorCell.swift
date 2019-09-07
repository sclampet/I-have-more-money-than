//
//  ErrorCell.swift
//  I Have More Money Than
//
//  Created by Scott Clampet on 9/7/19.
//  Copyright © 2019 Scott Clampet. All rights reserved.
//

import UIKit

class ErrorCell: BaseCell {
    
    let retryButton: UIButton = {
       let button = UIButton(type: .system)
        button.setTitle("retry", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    override func setupViews() {
        
    }
}
