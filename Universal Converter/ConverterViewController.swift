//
//  ConverterViewController.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-22.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    let btn1 = KeyboardButton(), btn2 = UIButton(), btn3 = UIButton(), btn4 = UIButton(), btn5 = UIButton(), btn6 = UIButton(), btn7 = UIButton(), btn8 = UIButton(), btn9 = UIButton(), btnClear = UIButton(), btnDone = UIButton()

    @IBOutlet weak var vwKeyboardView: UIView!
    
    @IBOutlet weak var constBottomOfKeyboard: NSLayoutConstraint!
    
    var catSwitch: CategorySwitch?
    var catArray: [String]?

    override func viewDidLoad() {
        super.viewDidLoad()

        print(catSwitch.debugDescription)
        
    }
    
    @IBAction func btnTest(sender: AnyObject) {
        
        hideAndShowKeyboard()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var keyboardToggle = false
    
    func hideAndShowKeyboard() {
        if keyboardToggle == false {
            UIView.animateWithDuration(0.3) { () -> Void in
                self.constBottomOfKeyboard.constant = 0
                self.view.layoutIfNeeded()
                self.keyboardToggle = true
            }

        } else {
            UIView.animateWithDuration(0.3) { () -> Void in
                self.constBottomOfKeyboard.constant = -self.vwKeyboardView.bounds.height
                self.view.layoutIfNeeded()
                self.keyboardToggle = false
            }
        }
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
