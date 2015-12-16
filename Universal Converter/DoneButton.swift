//
//  DoneButton.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-12-10.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class DoneButton: KeyboardButton {

    var clearTopColor = UIColor(red: 66/255, green: 76/255, blue: 89/255, alpha: 1).CGColor
    var clearBottomColor = UIColor(red: 47/255, green: 59/255, blue: 75/255, alpha: 1).CGColor
    
    override var topColor: CGColor {
        get {
            return clearTopColor
        }
        set {
            
        }
    }
    
    override var bottomColor: CGColor {
        get {
            return clearBottomColor
        }
        set {
            
        }
    }

}
