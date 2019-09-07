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
            

            let color = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
            let attributedText = NSMutableAttributedString(string: account.name, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 22, weight: .bold), NSAttributedString.Key.foregroundColor: color])
            
            //format amount
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            let formattedAmount = numberFormatter.string(from: NSNumber(value:account.amount))
            
            attributedText.append(NSAttributedString(string: "\n\n$\(formattedAmount!)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: color]))

            
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
        tv.backgroundColor = .white
        tv.contentInset = UIEdgeInsets(top: 5, left: 10, bottom: 0, right: 10)
        tv.layer.borderWidth = 1
        tv.layer.borderColor = UIColor.lightGray.cgColor
        return tv
    }()
    
    let grayLayerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 0.1)
        return view
    }()
    

    override func setupViews() {
        backgroundColor = .cyan
        addSubview(imageView)
        addSubview(textView)
        imageView.addSubview(grayLayerView)
        
        addConstraintsWithFormat(format: "V:|[v0][v1(100)]|", views: imageView, textView)
        addConstraintsWithFormat(format: "H:|[v0]|", views: imageView)
        addConstraintsWithFormat(format: "V:|[v0]|", views: grayLayerView)
        addConstraintsWithFormat(format: "H:|[v0]|", views: grayLayerView)
        
        addConstraintsWithFormat(format: "H:|[v0]|", views: textView)
    }
    
}
