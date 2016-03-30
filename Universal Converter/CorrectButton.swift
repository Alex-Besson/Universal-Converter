//
//  CorrectButton.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-12-10.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class CorrectButton: KeyboardButton {

//    var clearTopColor = UIColor(red: 255/255, green: 198/255, blue: 61/255, alpha: 1).CGColor
    
    var clearTopColor = UIColor(red: 236/255, green: 181/255, blue: 47/255, alpha: 1).CGColor
    var clearBottomColor = UIColor(red: 236/255, green: 181/255, blue: 47/255, alpha: 1).CGColor
    
        
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.titleLabel?.font = UIFont(name: "Avenir Heavy", size: 15)
    }
    
}
