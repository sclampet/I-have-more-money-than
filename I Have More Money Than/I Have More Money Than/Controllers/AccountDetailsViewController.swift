//
//  AccountDetailsViewController.swift
//  I Have More Money Than
//
//  Created by Scott Clampet on 9/6/19.
//  Copyright © 2019 Scott Clampet. All rights reserved.
//

import UIKit

class AccountDetailsViewController: UIViewController {
    let green = UIColor.rgb(red: 99, green: 216, blue: 99, alpha: 1)
    let red = UIColor.rgb(red: 255, green: 77, blue: 77, alpha: 1)
    
    var account: Account? {
        didSet {
            guard let account = account else {
                return
            }
            view.backgroundColor = account.ROI > 0 ? green : red
            
            //format amount
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            let formattedAmount = numberFormatter.string(from: NSNumber(value:account.amount))
            amountLabel.text = "$\(formattedAmount!)"
        }
    }
    
    let amountLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(amountLabel)
        
        view.addConstraintsWithFormat(format: "V:|[v0]|", views: amountLabel)
        view.addConstraintsWithFormat(format: "H:|-8-[v0]-8-|", views: amountLabel)
    }
}
