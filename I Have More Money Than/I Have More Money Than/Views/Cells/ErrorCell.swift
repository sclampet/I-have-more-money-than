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
        button.setTitle("RETRY", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    override func setupViews() {
        addSubview(retryButton)
        
        addConstraintsWithFormat(format: "V:|[v0]|", views: retryButton)
        addConstraintsWithFormat(format: "H:|[v0]|", views: retryButton)
    }
}
