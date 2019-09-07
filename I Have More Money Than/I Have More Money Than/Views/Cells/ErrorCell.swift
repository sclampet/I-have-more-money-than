//
//  ErrorCell.swift
//  I Have More Money Than
//
//  Created by Scott Clampet on 9/7/19.
//  Copyright © 2019 Scott Clampet. All rights reserved.
//

import UIKit

class ErrorCell: BaseCell {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "There was an issue getting your accounts."
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.numberOfLines = 2
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Please check your internet connection."
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 18)
        label.textAlignment = .center
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    let retryButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("RETRY", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    override func setupViews() {
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(retryButton)
        
        addConstraintsWithFormat(format: "V:|-150-[v0]-16-[v1]-22-[v2]", views: titleLabel, subtitleLabel, retryButton)
        addConstraintsWithFormat(format: "H:|[v0]|", views: titleLabel)
        addConstraintsWithFormat(format: "H:|[v0]|", views: subtitleLabel)
        addConstraintsWithFormat(format: "H:|[v0]|", views: retryButton)
    }
}
