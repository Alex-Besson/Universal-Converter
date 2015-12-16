//
//  FloatingView.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-25.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class FloatingView: UIView {
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 4
        
        self.layer.shadowColor = UIColor.blackColor().CGColor
        self.layer.shadowRadius = 4
        self.layer.shadowOffset = CGSizeMake(2, 2)
        self.layer.shadowOpacity = 1
    }

}
