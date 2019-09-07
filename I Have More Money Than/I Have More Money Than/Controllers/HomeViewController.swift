//
//  ViewController.swift
//  I Have More Money Than
//
//  Created by Scott Clampet on 9/6/19.
//  Copyright © 2019 Scott Clampet. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {
    
    private let cellId = "cellId"
    let accounts: [Account] = {
        return [
            Account(id: 1, name: "Royal Bank of Canada", imageName: "bankCanada", amount: 234123, ROI: 12),
            Account(id: 2, name: "Cayman Islands", imageName: "cayman", amount: 5432, ROI: 12),
            Account(id: 3, name: "Berkshire", imageName: "berkshire", amount: 43454345, ROI: -12),
            Account(id: 4, name: "Real Estate", imageName: "realEstate", amount: 234123, ROI: 12),
            Account(id: 5, name: "Gold Bars", imageName: "goldBars", amount: 234122342343, ROI: -12),
            Account(id: 6, name: "Venture Investments", imageName: "venture", amount: 123, ROI: 12),
            Account(id: 7, name: "Stuffed Under Mattress", imageName: "mattressMoney", amount: 234123, ROI: 12),
            Account(id: 8, name: "Mining", imageName: "mining", amount: 2343, ROI: 12),
            Account(id: 9, name: "Antiquities", imageName: "antiquity", amount: 234123, ROI: -12),
        ]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(AccountCell.self, forCellWithReuseIdentifier: cellId)
    }
}

//MARK: DataSource & Delegate Methods
extension HomeViewController {
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return accounts.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! AccountCell
        cell.account = accounts[indexPath.item]
        setBorderAndShadow(on: cell)
        return cell
    }
    
}


//MARK: FlowLayout Methods
extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 50, height: 350)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 25
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 25, left: 25, bottom: 25, right: 25)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailsScreen = AccountDetailsViewController()
        if let nav = navigationController {
            detailsScreen.account = accounts[indexPath.item]
            nav.pushViewController(detailsScreen, animated: true)
        }
    }
}


//MARK: Helper Methods
extension HomeViewController {
    
    fileprivate func setBorderAndShadow(on cell: UICollectionViewCell) {

        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 1
        
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 0.7
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
    }
}

