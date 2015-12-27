//
//  DotButton.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-12-27.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class DotButton: KeyboardButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addGradientLayerColors(topColor, bottom: bottomColor)
    }
    
    override func addGradientLayerColors(top: CGColor, bottom: CGColor) {
        self.layer.insertSublayer(gradientLayer, atIndex: 0)
        gradientLayer.frame = CGRectMake(0, 0, self.bounds.width * 2, self.bounds.height)
        gradientLayer.frame.size = self.bounds.size
        
        gradientLayer.colors = [top, bottom]
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
