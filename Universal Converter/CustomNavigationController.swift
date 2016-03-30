//
//  CustomNavigationController.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2016-03-30.
//  Copyright © 2016 Alexander Besson. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {
    
    let leftColor = UIColor(red: 106/255, green: 195/255, blue: 205/255, alpha: 1).CGColor
    let rightColor = UIColor(red: 12/255, green: 36/255, blue: 80/255, alpha: 1).CGColor

    override func viewDidLoad() {
        super.viewDidLoad()

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: -20, width: navigationBar.bounds.width, height: navigationBar.bounds.height + 20)
        gradientLayer.colors = [leftColor, rightColor]
        gradientLayer.startPoint = CGPointMake(0.0, 1.0)
        gradientLayer.endPoint = CGPointMake(0.5, 1.0)

        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
        gradientLayer.renderInContext(UIGraphicsGetCurrentContext()!)
        let gradientImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        navigationBar.setBackgroundImage(gradientImage, forBarMetrics: UIBarMetrics.Default)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
