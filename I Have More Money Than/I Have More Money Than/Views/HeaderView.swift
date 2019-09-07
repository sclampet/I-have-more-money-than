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
        label.text = "Accounts"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    let subtitleLabel: UILabel = {
       let label = UILabel()
        label.text = "Congratulations on being wealthier than the following friends."
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 18)
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        
        addConstraintsWithFormat(format: "V:|[v0][v1]|", views: titleLabel, subtitleLabel)
        addConstraintsWithFormat(format: "H:|-24-[v0]-36-|", views: titleLabel)
        addConstraintsWithFormat(format: "H:|-24-[v0]-50-|", views: subtitleLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
