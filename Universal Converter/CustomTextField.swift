//
//  CustomTextField.swift
//  Universal Converter
//
//  Created by Miwand Najafe on 2016-01-02.
//  Copyright © 2016 Alexander Besson. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    var customTextColor = UIColor.purpleColor()
    override var textColor: UIColor? {
        get {
         return customTextColor
        } set {
            
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.borderStyle = .RoundedRect
        self.backgroundColor = UIColor.clearColor()
        self.tintColor = UIColor.blueColor()
        
        self.layer.borderColor = UIColor.lightGrayColor().CGColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  

}
