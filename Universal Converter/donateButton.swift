//
//  donateButton.swift
//  Universal Converter
//
//  Created by Miwand Najafe on 2016-01-02.
//  Copyright © 2016 Alexander Besson. All rights reserved.
//

import UIKit

class donateButton: UIButton {

    
    override init(frame:CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.lightGrayColor()
        
        setTitle("Donate", forState: .Normal)
        
        setTitleColor(UIColor.purpleColor(), forState: .Normal)
        
        self.layer.borderColor = UIColor.purpleColor().CGColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
        self.layer.shadowColor = UIColor.blackColor().CGColor
        self.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.layer.masksToBounds = false
        self.layer.shadowRadius = 5
        self.layer.shadowOpacity = 1

        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    

    
    
    
}
