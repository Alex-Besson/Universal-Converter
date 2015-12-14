//
//  CurrencyModel.swift
//  Universal Converter
//
//  Created by Miwand Najafe on 2015-12-11.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import Foundation

struct CurrencyModel {
    var country: String?
    var exchangeRate: String?
    var symbol: String?
    
    init(country:String,exchangeRate:String,symbol:String){
        self.country = country
         self.exchangeRate = exchangeRate
        self.symbol = symbol
    }
}