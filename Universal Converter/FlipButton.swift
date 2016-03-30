//
//  FlipButton.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-12-10.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class FlipButton: KeyboardButton {

//    var clearTopColor = UIColor(red: 67/255, green: 160/255, blue: 226/255, alpha: 1).CGColor
    
    var clearTopColor = UIColor(red: 48/255, green: 143/255, blue: 212/255, alpha: 1).CGColor
    var clearBottomColor = UIColor(red: 48/255, green: 143/255, blue: 212/255, alpha: 1).CGColor
    
    //    -19 -17 -14
    
        
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 15)
    }

}
