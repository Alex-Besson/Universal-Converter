//
//  RoundingNumExtension.swift
//  UnitConverterX
//
//  Created by Miwand Najafe on 2015-11-25.
//  Copyright © 2015 Miwand Najafe. All rights reserved.
//

import Foundation

// EXTENTION TO ROUND THE RESULT VALUES (DOUBLES)

extension Double {
    
    func roundToDecimals(decimalPlaces:Int) -> Double {
        let multiplier = pow(10.0, Double(decimalPlaces))
        return round(multiplier * self) / multiplier
    }
}
