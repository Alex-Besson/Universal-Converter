//
//  Weight.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-25.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import Foundation

enum WeightFromKilos {
    case ToKilograms
    case ToGrams
    case ToMilligram
    case ToPound
    case ToOunce
    case ToTonMetric
    case ToTonLongUK
    case ToTonShortUS
    case ToStone
}

enum WeightToKilos {
    case FromKilograms
    case FromGrams
    case FromMilligram
    case FromPound
    case FromOunce
    case FromTonMetric
    case FromTonLongUK
    case FromTonShortUS
    case FromStone
}

class Weight {
    
    static func handleWeightEquation(weightValue: String, convertFrom: WeightToKilos, convertTo: WeightFromKilos) -> String {
        
        let valueToKilos = Double(weightValue)
        let valueInKilos: Double
        
        switch convertFrom {
        case .FromKilograms:
            valueInKilos = valueToKilos!
        case .FromGrams:
            valueInKilos = valueToKilos! / 1000
        case .FromMilligram:
            valueInKilos = valueToKilos! / 1000000
        case .FromPound:
            valueInKilos = valueToKilos! / 2.20462
        case .FromOunce:
            valueInKilos = valueToKilos! / 35.27397
        case .FromTonMetric:
            valueInKilos = valueToKilos! * 1000
        case .FromTonLongUK:
            valueInKilos = valueToKilos! / 0.00098421
        case .FromTonShortUS:
            valueInKilos = valueToKilos! / 0.001102311311
        case .FromStone:
            valueInKilos = valueToKilos! / 0.1574730444
        }
        
        switch convertTo {
        case .ToKilograms:
            return "\(valueInKilos)"
        case .ToGrams:
            let valueInGrams = valueInKilos * 1000
            return "\(valueInGrams)"
        case .ToMilligram:
            let valueInMilligrams = valueInKilos * 1000000
            return "\(valueInMilligrams)"
        case .ToPound:
            let valueInPounds = valueInKilos * 2.20462
            return "\(valueInPounds)"
        case .ToOunce:
            let valueInOunces = valueInKilos * 35.27397
            return "\(valueInOunces)"
        case .ToTonMetric:
            let valueInTonsMetric = valueInKilos / 1000
            return "\(valueInTonsMetric)"
        case .ToTonLongUK:
            let valueInTonsLongUK = valueInKilos * 0.00098421
            return "\(valueInTonsLongUK)"
        case .ToTonShortUS:
            let valueInTonsShortUS = valueInKilos * 0.001102311311
            return "\(valueInTonsShortUS)"
        case .ToStone:
            let valueInStone = valueInKilos * 0.1574730444
            return "\(valueInStone)"
        }
        
    }
    
    
}