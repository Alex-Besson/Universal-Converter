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
    
    var catSelected: CategoryModel!
    
    let convertController = FormulaController()
    
    // THE RESULTS OF ALL CONVERSIONS -- USED TO POPULATE RESULTS TABLE
    var conversionData = [(String,String)]()
    
    // VIEW DID LOAD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if catSelected.name == "Currency" {
            
            convertController.getCurrencies()
            
        }
        self.title = catSelected.name
        setUpLabelTapGestrue()
        
        manageEquation(catSelected.categorySelected, leftLabelValue: lblConvertFrom.text!, leftPick: 0, rightPick: 0)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        hideAndShowKeyboard()
        
    }
    
    // TABLE VIEW FUNCTIONS
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conversionData.count
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ResultsCell", forIndexPath: indexPath) as! ConverterResultsCell
        
        cell.lblCategory.text = conversionData[indexPath.row].0
        cell.lblResults.text = conversionData[indexPath.row].1
        
        if catSelected.name == "Currency" {
            let flagImages = (FormulaModel.currencyConstants.allKeys as! [String]).sort(<)
            cell.imgFlag.image = UIImage(named:flagImages[indexPath.row] )
        }
        
        
        lblConvertTo.text = conversionData[rightPickerIndex].1
        
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
    
    @IBAction func flipButtonPressed(sender: AnyObject) {
        pickerRight.selectRow(leftPickerIndex, inComponent: 0, animated: true)
        pickerLeft.selectRow(rightPickerIndex, inComponent: 0, animated: true)
        
        let tempPickerIndex = leftPickerIndex
        leftPickerIndex = rightPickerIndex
        rightPickerIndex = tempPickerIndex
        
        manageEquation(self.catSelected.categorySelected, leftLabelValue: lblConvertFrom.text!, leftPick: self.leftPickerIndex, rightPick: self.rightPickerIndex)
    }
    // EQUATION FUNCTION
    
    func manageEquation(categorySelected: CategorySwitch, leftLabelValue: String, leftPick: Int, rightPick: Int) {
        
        conversionData = convertController.findValue(lblConvertFrom.text!, formulaType: catSelected.name, currentValueType: catSelected.categories[leftPickerIndex])
        tblResults.reloadData()
        
    }
    
}
