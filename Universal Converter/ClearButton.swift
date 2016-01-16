//
//  ClearButton.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-12-10.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class ClearButton: KeyboardButton {
    
//    var clearTopColor = UIColor(red: 163/255, green: 27/255, blue: 16/255, alpha: 1).CGColor
    
    var clearTopColor = UIColor(red: 211/255, green: 47/255, blue: 47/255, alpha: 1).CGColor
    var clearBottomColor = UIColor(red: 211/255, green: 47/255, blue: 47/255, alpha: 1).CGColor
    
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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.titleLabel?.font = UIFont(name: "Avenir Heavy", size: 15)
    }

}
