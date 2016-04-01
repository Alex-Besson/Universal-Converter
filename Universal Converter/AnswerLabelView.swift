//
//  AnswerLabelView.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2016-04-01.
//  Copyright © 2016 Alexander Besson. All rights reserved.
//

import UIKit

class AnswerLabelView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func drawRect(rect: CGRect) {
        
        let trianglePath = UIBezierPath()
        
        trianglePath.lineWidth = 1
        
        trianglePath.moveToPoint(CGPoint(x: 0, y: bounds.height / 2 - 5))
        trianglePath.addLineToPoint(CGPoint(x: 8, y: bounds.height / 2))
        trianglePath.addLineToPoint(CGPoint(x: 0, y: bounds.height / 2 + 5))
        trianglePath.closePath()
        CustomColors.navyBlueColor().setFill()
        trianglePath.fill()
    }
    

}
