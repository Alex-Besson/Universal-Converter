//
//  KeyboardButton.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-24.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class KeyboardButton: UIButton {
    
    var topColor = UIColor(red: 50/255, green: 50/255, blue: 52/255, alpha: 1).CGColor
    var bottomColor = UIColor(red: 31/255, green: 33/255, blue: 36/255, alpha: 1).CGColor
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 2
        self.clipsToBounds = true
        
        addGradientLayer()
        backgroundColor = UIColor.blueColor()
        
    }
    
    func addGradientLayer() {
        
        
        
        let gradientLayer = CAGradientLayer()
            
        self.layer.insertSublayer(gradientLayer, atIndex: 0)
        gradientLayer.frame.size = self.bounds.size
            
        gradientLayer.colors = [topColor, bottomColor]
        gradientLayer.locations = [0.3, 0.4]
        
    }

    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
