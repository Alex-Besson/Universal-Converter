//
//  FlipButton.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-12-10.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class FlipButton: KeyboardButton {

    var clearTopColor = UIColor(red: 67/255, green: 160/255, blue: 226/255, alpha: 1).CGColor
    var clearBottomColor = UIColor(red: 48/255, green: 143/255, blue: 212/255, alpha: 1).CGColor
    
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
