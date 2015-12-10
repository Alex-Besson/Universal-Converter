//
//  CorrectButton.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-12-10.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class CorrectButton: KeyboardButton {

    var clearTopColor = UIColor(red: 255/255, green: 198/255, blue: 61/255, alpha: 1).CGColor
    var clearBottomColor = UIColor(red: 236/255, green: 181/255, blue: 47/255, alpha: 1).CGColor
    
    //    var topColor = UIColor(red: 50/255, green: 50/255, blue: 52/255, alpha: 1).CGColor
    //    var bottomColor = UIColor(red: 31/255, green: 33/255, blue: 36/255, alpha: 1).CGColor
    
    //    -19 -17 -14
    
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
