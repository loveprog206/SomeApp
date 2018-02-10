//
//  RecentCurrencySearchDelegate.swift
//  CryptoSpace
//
//  Created by iStef on 23.12.17.
//  Copyright © 2017 Stefanov. All rights reserved.
//

import UIKit

private let kCurrencyForSearchCellHeight = 50
private let kSectionHeaderHeight = 20

class RecentCurrencySearchDelegate: NSObject, UITableViewDelegate {
    
    var fromVC = UIViewController()
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(kCurrencyForSearchCellHeight)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let storyboard = UIStoryboard.init(name: "TrackedCurrenciesStoryboard", bundle: nil)
        let addCurrencyVC = storyboard.instantiateViewController(withIdentifier: "AddCurrencyViewController")
        self.fromVC.navigationController?.pushViewController(addCurrencyVC, animated: true)
    }
}
