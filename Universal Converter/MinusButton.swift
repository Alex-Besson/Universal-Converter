//
//  MinusButton.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-12-23.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class MinusButton: KeyboardButton {

    var minusTopColor = UIColor(red: 107/255, green: 135/255, blue: 100/255, alpha: 1).CGColor
    var minusBottomColor = UIColor(red: 88/255, green: 118/255, blue: 86/255, alpha: 1).CGColor
        
    override var topColor: CGColor {
        get {
            return minusTopColor
        }
        set {
            
        }
    }
    
    override var bottomColor: CGColor {
        get {
            return minusBottomColor
        }
        set {
            
        }
    }

}
