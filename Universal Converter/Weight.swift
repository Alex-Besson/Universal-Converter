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
    
    static func handleEquation(weightValue: String, convertFrom: Int, convertTo: Int) -> String {
        
        let valueToKilos = NSNumberFormatter().numberFromString(weightValue)?.doubleValue
        let valueInKilos: Double
        
        var errorString = "error in formula -1"
        
        if convertFrom == 0 {
            valueInKilos = valueToKilos!
        } else if convertFrom == 1 {
            valueInKilos = valueToKilos! / 1000
        } else if convertFrom == 2 {
            valueInKilos = valueToKilos! / 1000000
        } else if convertFrom == 3 {
            valueInKilos = valueToKilos! / 2.20462
        } else if convertFrom == 4 {
            valueInKilos = valueToKilos! / 35.27397
        } else if convertFrom == 5 {
            valueInKilos = valueToKilos! * 1000
        } else if convertFrom == 6 {
            valueInKilos = valueToKilos! / 0.00098421
        } else if convertFrom == 7 {
            valueInKilos = valueToKilos! / 0.001102311311
        } else if convertFrom == 8 {
            valueInKilos = valueToKilos! / 0.1574730444
        } else {
            print(errorString)
            return errorString
        }
        
        if convertTo == 0 {
            return "\(valueInKilos)"
        } else if convertTo == 1 {
            let valueInGrams = valueInKilos * 1000
            return "\(valueInGrams)"
        } else if convertTo == 2 {
            let valueInMilligrams = valueInKilos * 1000000
            return "\(valueInMilligrams)"
        } else if convertTo == 3 {
            let valueInPounds = valueInKilos * 2.20462
            return "\(valueInPounds)"
        } else if convertTo == 4 {
            let valueInOunces = valueInKilos * 35.27397
            return "\(valueInOunces)"
        } else if convertTo == 5 {
            let valueInTonsMetric = valueInKilos / 1000
            return "\(valueInTonsMetric)"
        } else if convertTo == 6 {
            let valueInTonsLongUK = valueInKilos * 0.00098421
            return "\(valueInTonsLongUK)"
        } else if convertTo == 7 {
            let valueInTonsShortUS = valueInKilos * 0.001102311311
            return "\(valueInTonsShortUS)"
        } else if convertTo == 8 {
            let valueInStone = valueInKilos * 0.1574730444
            return "\(valueInStone)"
        } else {
            errorString = "error in formula -2"
            return errorString
        }
        
    }
    
    static func handleWeightEquation(weightValue: String, convertFrom: WeightToKilos, convertTo: WeightFromKilos) -> String {
        
        let valueToKilos = NSNumberFormatter().numberFromString(weightValue)?.doubleValue
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