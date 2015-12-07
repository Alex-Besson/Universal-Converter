//
//  RoundingNumExtension.swift
//  UnitConverterX
//
//  Created by Miwand Najafe on 2015-11-25.
//  Copyright © 2015 Miwand Najafe. All rights reserved.
//

import Foundation

extension Double {
    var roundTo5:Double {
        let converter = NSNumberFormatter()
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.NoStyle
        formatter.minimumFractionDigits = 5
        formatter.roundingMode = .RoundDown
        formatter.maximumFractionDigits = 5
        if let stringFromDouble =  formatter.stringFromNumber(self) {
            if let doubleFromString = converter.numberFromString( stringFromDouble ) as? Double {
                return doubleFromString
            }
        }
        return 0
    }
}