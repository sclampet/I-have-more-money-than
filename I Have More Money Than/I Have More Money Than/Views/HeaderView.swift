//
//  HeaderView.swift
//  I Have More Money Than
//
//  Created by Scott Clampet on 9/7/19.
//  Copyright © 2019 Scott Clampet. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Accounts that make less than you do"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(titleLabel)
        
        addConstraintsWithFormat(format: "V:|[v0]|", views: titleLabel)
        addConstraintsWithFormat(format: "H:|-24-[v0]-36-|", views: titleLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
