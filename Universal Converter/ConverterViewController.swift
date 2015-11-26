//
//  ConverterViewController.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-22.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var vwKeyboardView: UIView!
    
    @IBOutlet weak var constBottomOfKeyboard: NSLayoutConstraint!
    
    var catSwitch: CategorySwitch?
    var catArray: [String]?

    override func viewDidLoad() {
        super.viewDidLoad()

        print(catSwitch.debugDescription)
        
    }
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
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
