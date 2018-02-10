//
//  ObservedCurrencyCell.swift
//  CryptoSpace
//
//  Created by iStef on 18.12.17.
//  Copyright © 2017 Stefanov. All rights reserved.
//

import UIKit

class ObservedCurrencyCell: UITableViewCell {
    
    @IBOutlet weak var observedCurrencyImageView: UIImageView!
    @IBOutlet weak var exchangeRatePercentagesChangeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
