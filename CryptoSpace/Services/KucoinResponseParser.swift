//
//  KucoinResponseParser.swift
//  CryptoSpace
//
//  Created by st.i on 09.03.2018.
//  Copyright © 2018 Stefanov. All rights reserved.
//

import UIKit

class KucoinResponseParser: NSObject {

    class func parseResponse(response: [String: AnyObject], coinsArray: [Coin], btcRate: Double)/* -> Array<Any>*/ { //Dictionary<String, Double> {
        
        let kAllDicts = "data"
        let kCoinsPair = "symbol"
        let kLastCoinPrice = "lastDealPrice"
        let btcPrefix = "-BTC"
        
        let dictsArray = response[kAllDicts] as! [Dictionary<String, AnyObject>]
//        var allCoins = Array<Any>()
        
        for someCoin in coinsArray {
            if someCoin.exchange == ExchangeBehavior.Kucoin {
                for currentDict in dictsArray {
                    let coinsPair = currentDict[kCoinsPair] as! String
                    if coinsPair.contains(btcPrefix) {
                        
                        let btcLastThreeChars = coinsPair.suffix(4)
                        if btcLastThreeChars == btcPrefix {
                        
                            let start = coinsPair.index(coinsPair.startIndex, offsetBy: 0)
                            let end = coinsPair.index(btcLastThreeChars.startIndex, offsetBy: 0)
                            let range = start ..< end
                        
                            let coinName = coinsPair[range]
                            if someCoin.shortName == coinName {
                                let coinPrice = ((currentDict[kLastCoinPrice] as? NSNumber)?.doubleValue)! * btcRate
                                let currentCoinArray = [coinName, coinPrice] as [Any]
                            
                                print(currentCoinArray)
                            }
                        }
                    }
                }
            }
        }
    }
}
