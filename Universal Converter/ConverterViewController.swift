//
//  ConverterViewController.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-22.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate, UIPickerViewDelegate {
    
    @IBOutlet weak var lblConvertFrom: UILabel!
    @IBOutlet weak var lblConvertTo: UILabel!

    @IBOutlet weak var vwKeyboardView: UIView!
    @IBOutlet weak var constBottomOfKeyboard: NSLayoutConstraint!
    
    @IBOutlet weak var pickerLeft: UIPickerView!
    @IBOutlet weak var pickerRight: UIPickerView!
    
    var leftCategory: Any?
    var rightCategory: Any?
    
    var catSwitch: CategorySwitch?
    
    var catSelected: CategoryModel!
    
    // VIEW DID LOAD

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = catSelected.name
        
        setUpPickers()
        setUpLabelTapGestrue()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        hideAndShowKeyboard()
    }
    
    // TABLE VIEW FUNCTIONS
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catSelected.categories.count
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ResultsCell", forIndexPath: indexPath) as! ConverterResultsCell
        
        cell.lblCategory.text = catSelected.categories[indexPath.row]
        cell.lblResults.text = "coming soon"
        
        return cell
        
    }
    
    // PICKER VIEW FUNCTIONS
    
    internal func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    internal func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return catSelected.categories.count
    }
    
    internal func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return catSelected.categories[row]
    }
    
    internal func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        
        let attributedTitle = NSAttributedString(string: catSelected.categories[row], attributes: [NSForegroundColorAttributeName: UIColor(red: 250, green: 250, blue: 250, alpha: 1)])
        return attributedTitle
    }
    
    internal func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerLeft {
            
        } else {
            
        }
    }
    
    func setUpPickers() {
        
        leftCategory = WeightFromKilos.ToKilograms
        rightCategory = WeightToKilos.FromKilograms
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // KEYBOARD FUNCTIONS
    
    func setUpLabelTapGestrue() {
        lblConvertFrom.userInteractionEnabled = true
        
        let gesture = UITapGestureRecognizer(target: self, action: "hideAndShowKeyboard")
        lblConvertFrom.addGestureRecognizer(gesture)
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
    
    @IBAction func doneButtonPressed(sender: AnyObject) {
        
        hideAndShowKeyboard()
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
