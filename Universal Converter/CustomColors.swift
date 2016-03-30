//
//  CustomColors.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2016-03-30.
//  Copyright © 2016 Alexander Besson. All rights reserved.
//

import UIKit

class CustomColors {
    
    static func offWhiteColor() -> UIColor {
        return UIColor(white: 245/255, alpha: 1)
    }
    
    static func offBlackColor() -> UIColor {
        return UIColor(white: 10/255, alpha: 1)
    }
    
    static func leftNavGradientColor() -> UIColor {
        return UIColor(red: 106/255, green: 195/255, blue: 205/255, alpha: 1)
    }
    
    static func rightNavGradientColor() -> UIColor {
        return UIColor(red: 12/255, green: 36/255, blue: 18/255, alpha: 1)
    }
    
    static func navyBlueColor() -> UIColor {
        return UIColor(red: 25/255, green: 58/255, blue: 97/255, alpha: 1)
    }
    
    static func backgroundColor() -> UIColor {
        return UIColor(red: 59/255, green: 100/255, blue: 130/255, alpha: 1)
    }
    
    static func backgroundGradientBottomColor() -> UIColor {
        return UIColor(red: 94/255, green: 174/255, blue: 188/255, alpha: 1)
    }
    
    static func backgroundGradientTopColor() -> UIColor {
        return CustomColors.offWhiteColor()
    }
}
