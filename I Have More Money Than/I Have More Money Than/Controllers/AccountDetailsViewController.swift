//
//  AccountDetailsViewController.swift
//  I Have More Money Than
//
//  Created by Scott Clampet on 9/6/19.
//  Copyright © 2019 Scott Clampet. All rights reserved.
//

import UIKit

class AccountDetailsViewController: UIViewController {
    var account: Account?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(account)
        view.backgroundColor = .cyan
    }

}
