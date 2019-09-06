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
            
            let color = UIColor(white: 1, alpha: 1)
            let attributedText = NSMutableAttributedString(string: account.name, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24, weight: .medium), NSAttributedString.Key.foregroundColor: color])
            
            attributedText.append(NSAttributedString(string: "\n\n\(account.amount)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), NSAttributedString.Key.foregroundColor: color]))
            
//            let paragraphStyle = NSMutableParagraphStyle()
//            paragraphStyle.alignment = .center
//
//            let length = attributedText.string.count
//            attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: length))
            
            textView.attributedText = attributedText
        }
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let textView: UITextView = {
        let tv = UITextView()
        tv.text = ""
        tv.isEditable = false
        tv.backgroundColor = .gray
        return tv
    }()
    
    override func setupViews() {
        backgroundColor = .cyan
        addSubview(imageView)
        addSubview(textView)
        
        addConstraintsWithFormat(format: "V:|[v0]|", views: imageView)
        addConstraintsWithFormat(format: "H:|[v0]|", views: imageView)
        
        addConstraintsWithFormat(format: "V:[v0(100)]|", views: textView)
        addConstraintsWithFormat(format: "H:|[v0]|", views: textView)
    }
}
