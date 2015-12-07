//
//  ConverterViewController.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-22.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate, UIPickerViewDelegate {
    
    @IBOutlet weak var tblResults: UITableView!
    @IBOutlet weak var lblConvertFrom: UILabel!
    @IBOutlet weak var lblConvertTo: UILabel!
    
    @IBOutlet weak var vwKeyboardView: UIView!
    @IBOutlet weak var constBottomOfKeyboard: NSLayoutConstraint!
    
    @IBOutlet weak var pickerLeft: UIPickerView!
    @IBOutlet weak var pickerRight: UIPickerView!
    
    var leftPickerIndex = 0
    var rightPickerIndex = 0
    
    var catSwitch: CategorySwitch?
    
    var catSelected: CategoryModel!
    
    let convertController = FormulaController()
    var myValues = [(String,String)]()
    
    
    
    // VIEW DID LOAD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = catSelected.name
        setUpLabelTapGestrue()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        hideAndShowKeyboard()
        
    }
    
    // TABLE VIEW FUNCTIONS
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myValues.count
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ResultsCell", forIndexPath: indexPath) as! ConverterResultsCell
        
        cell.lblCategory.text = myValues[indexPath.row].0
        cell.lblResults.text = myValues[indexPath.row].1
        
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
            leftPickerIndex = row
            manageEquation(self.catSelected.categorySelected, leftLabelValue: lblConvertFrom.text!, leftPick: leftPickerIndex, rightPick: rightPickerIndex)
        } else {
            rightPickerIndex = row
            manageEquation(self.catSelected.categorySelected, leftLabelValue: lblConvertFrom.text!, leftPick: leftPickerIndex, rightPick: rightPickerIndex)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // KEYBOARD SHOW AND HIDE FUNCTIONS
    
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
    
    // KEYBOARD BUTTON FUNCTIONS
    
    @IBAction func numberButtonPressed(btn: UIButton!) {
        
        if lblConvertFrom.text == "0" {
            
            if btn.tag == 10 {
                lblConvertFrom.text = "0"
            } else {
                lblConvertFrom.text = ""
                lblConvertFrom.text? += "\(btn.tag)"
            }
            
        } else {
            if btn.tag == 10 {
                
                if lblConvertFrom.text?.rangeOfString(".") == nil {
                    lblConvertFrom.text? += "."
                }
                
            } else {
                lblConvertFrom.text? += "\(btn.tag)"
            }
            
        }
        
        manageEquation(self.catSelected.categorySelected, leftLabelValue: lblConvertFrom.text!, leftPick: self.leftPickerIndex, rightPick: self.rightPickerIndex)
        
    }
    
    @IBAction func clearButtonPressed(sender: AnyObject) {
        lblConvertFrom.text = "0"
        
        manageEquation(self.catSelected.categorySelected, leftLabelValue: lblConvertFrom.text!, leftPick: self.leftPickerIndex, rightPick: self.rightPickerIndex)
    }
    
    
    @IBAction func correctButtonPressed(sender: AnyObject) {
        
        if lblConvertFrom.text?.characters.count <= 1 {
            lblConvertFrom.text = "0"
        } else {
            lblConvertFrom.text?.removeAtIndex((lblConvertFrom.text?.endIndex.predecessor())!)
        }
        
        
        manageEquation(self.catSelected.categorySelected, leftLabelValue: lblConvertFrom.text!, leftPick: self.leftPickerIndex, rightPick: self.rightPickerIndex)
        
    }
    
    @IBAction func doneButtonPressed(sender: AnyObject) {
        hideAndShowKeyboard()
    }
    
    // EQUATION FUNCTION
    
    func manageEquation(categorySelected: CategorySwitch, leftLabelValue: String, leftPick: Int, rightPick: Int) {
        lblConvertTo.text = Weight.handleEquation(leftLabelValue, convertFrom: leftPick, convertTo: rightPick)
        myValues = convertController.findValue(lblConvertFrom.text!, formulaType: catSelected.name, currentValueType: catSelected.categories[leftPickerIndex])
        tblResults.reloadData()
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
