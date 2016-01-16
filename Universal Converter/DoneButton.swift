//
//  DoneButton.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-12-10.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class DoneButton: KeyboardButton {

//    var clearTopColor = UIColor(red: 55/255, green: 71/255, blue: 79/255, alpha: 1).CGColor
    
    var clearTopColor = UIColor(red: 38/255, green: 50/255, blue: 56/255, alpha: 1).CGColor
    var clearBottomColor = UIColor(red: 38/255, green: 50/255, blue: 56/255, alpha: 1).CGColor
    
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
        
        self.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 15)
    }

}
