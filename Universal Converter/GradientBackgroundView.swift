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
    
    let darkGrayColor = UIColor(red: 252/255, green: 228/255, blue: 236/255, alpha: 1).CGColor
    let lightGrayColor = UIColor(red: 252/255, green: 228/255, blue: 236/255, alpha: 1).CGColor

    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureGradientLayer()
    }
    
    func configureGradientLayer() {
        self.layer.addSublayer(gradientLayer)
        
        gradientLayer.frame.size = self.bounds.size
        
        gradientLayer.colors = [darkGrayColor, lightGrayColor]
        gradientLayer.locations = [0.2, 0.6]
        
    }
}
