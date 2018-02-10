//
//  CurrencyPairCellBuilder.swift
//  CryptoSpace
//
//  Created by iStef on 27.12.17.
//  Copyright © 2017 Stefanov. All rights reserved.
//

import UIKit

private let kCurrencyPairCellIdentifier = "CurrencyPairCell"

class CurrencyPairCellBuilder: NSObject {
    
    class func buildCurrencyPairCell(for tableView: UITableView) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kCurrencyPairCellIdentifier) as! CurrencyPairCell
        cell.selectionStyle = .none
        
        return cell
    }
}
