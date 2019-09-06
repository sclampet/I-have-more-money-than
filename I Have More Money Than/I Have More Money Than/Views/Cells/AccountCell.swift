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
            
            imageView.image = UIImage(named: account.imageName)
        }
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    override func setupViews() {
        backgroundColor = .cyan
        addSubview(imageView)
        
        addConstraintsWithFormat(format: "V:|[v0]|", views: imageView)
        addConstraintsWithFormat(format: "H:|[v0]|", views: imageView)
    }
}
