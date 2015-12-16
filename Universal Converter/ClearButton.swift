//
//  ClearButton.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-12-10.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class ClearButton: KeyboardButton {
    
    var clearTopColor = UIColor(red: 163/255, green: 27/255, blue: 16/255, alpha: 1).CGColor
    var clearBottomColor = UIColor(red: 144/255, green: 10/255, blue: 2/255, alpha: 1).CGColor
    
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
