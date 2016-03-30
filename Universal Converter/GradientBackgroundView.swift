//
//  GradientBackgroundView.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-12-23.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class GradientBackgroundView: UIView {
    
    let gradientLayer = CAGradientLayer()
    
    let topColor = CustomColors.backgroundGradientTopColor().CGColor
    let bottmColor = CustomColors.backgroundGradientBottomColor().CGColor

    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureGradientLayer()
    }
    
    func configureGradientLayer() {
        self.layer.addSublayer(gradientLayer)
        
        gradientLayer.frame.size = self.bounds.size
        
        gradientLayer.colors = [topColor, bottmColor]
        gradientLayer.locations = [0.0, 0.6]
        
    }
}
