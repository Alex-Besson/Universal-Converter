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
    
    @IBOutlet weak var constMinusButtonLeading: NSLayoutConstraint!
    @IBOutlet weak var btnMinus: KeyboardButton!
    @IBOutlet weak var btnDot: KeyboardButton!
    @IBOutlet weak var btn7: KeyboardButton!
    @IBOutlet weak var btnInfo: UIBarButtonItem!
    @IBOutlet weak var pickerLeft: UIPickerView!
    @IBOutlet weak var pickerRight: UIPickerView!
    
    var leftPickerIndex = 0
    var rightPickerIndex = 0
    var isHidden: Bool = false
    var catSelected: CategoryModel!
    
    let convertController = FormulaController()
    
    // THE RESULTS OF ALL CONVERSIONS -- USED TO POPULATE RESULTS TABLE
    var conversionData = [(String,String)]()

    
    // function to show or hide information
    func infoShow() {
        
        isHidden = !isHidden
        tblResults.reloadData()
    }

    
    func configBtnMoreInfo() {

        // Configure bar button to show or hide details
        
        let infoImage: String = "\u{24D8}"
        
        let btnMoreInfo = UIBarButtonItem.init(title: infoImage, style: UIBarButtonItemStyle.Plain, target: self, action: #selector(ConverterViewController.infoShow))
            
        self.navigationItem.rightBarButtonItem = btnMoreInfo
        
    }
    
 
    
    // VIEW DID LOAD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configBtnMoreInfo()
        
        navigationController?.navigationBar.tintColor = UIColor(white: 245/255, alpha: 1)
        
        if catSelected.categorySelected == CategorySwitch.Currency {
            
            convertController.getCurrencies()
            
        }
        
        if catSelected.categorySelected == CategorySwitch.Temperature {
            btnMinus.hidden = false
            
        } else {
            btnMinus.hidden = true
            
            constMinusButtonLeading.constant = -((self.view.bounds.width - (4 * 5)) / 4)
        }
        
        self.title = catSelected.name.uppercaseString
        
        
        setUpLabelTapGestrue()
        
        manageEquation(catSelected.categorySelected, leftLabelValue: lblConvertFrom.text!, leftPick: 0, rightPick: 0)
        if NSUserDefaults.standardUserDefaults().objectForKey("isHidden") != nil {
            isHidden = NSUserDefaults.standardUserDefaults().objectForKey("isHidden") as! Bool
        }
        
        navigationItem.leftBarButtonItem?.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "Avenir", size: 20)!], forState: .Normal)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        hideAndShowKeyboard()
        
    }
    
    // TABLE VIEW FUNCTIONS
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conversionData.count
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ResultsCell", forIndexPath: indexPath) as! ConverterResultsCell
        
        cell.lblCategory.text = conversionData[indexPath.row].0
        cell.lblResults.text = conversionData[indexPath.row].1
        
        if catSelected.name == "Currency" {
            let flagImages = (FormulaModel.currencyConstants.allKeys as! [String]).sort(<)
            
            cell.imgFlag.image = UIImage(named:flagImages[indexPath.row])
            
            
            
            
            cell.lblDescription.text = FormulaModel.currencyConstants.valueForKey(flagImages[indexPath.row]) as? String
            
        } else {
            guard let unitFullName = FormulaModel.unitFullName.valueForKeyPath(catSelected.name) as? [String] else {
                return cell
            }
            cell.lblDescription.text = unitFullName[indexPath.row]
            
        }
        
        cell.lblDescription.hidden = isHidden
        NSUserDefaults.standardUserDefaults().setValue(isHidden, forKey: "isHidden")
        NSUserDefaults.standardUserDefaults().synchronize()
        
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
    
//    func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
//        
//        let attributedTitle = NSAttributedString(string: catSelected.categories[row], attributes: [NSForegroundColorAttributeName: UIColor(red: 250, green: 250, blue: 250, alpha: 1), NSFontAttributeName: UIFont(name: "Avenir", size: 17)!])
//        return attributedTitle
//    }
    
    internal func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerLeft {
            leftPickerIndex = row
            manageEquation(self.catSelected.categorySelected, leftLabelValue: lblConvertFrom.text!, leftPick: leftPickerIndex, rightPick: rightPickerIndex)
        } else {
            rightPickerIndex = row
            manageEquation(self.catSelected.categorySelected, leftLabelValue: lblConvertFrom.text!, leftPick: leftPickerIndex, rightPick: rightPickerIndex)
        }
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        
        let label = UILabel()
        label.font = UIFont(name: "Avenir", size: 17)
        label.textAlignment = NSTextAlignment.Center
        label.textColor = UIColor(red: 252/255, green: 228/255, blue: 236/255, alpha: 1)
        
        label.text = catSelected.categories[row]
        
        return label
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
        
        if btn.tag != 10 && btn.tag != 11 {
            
            if lblConvertFrom.text == "0" {
                lblConvertFrom.text = "\(btn.tag)"
            } else if lblConvertFrom.text == "-0" {
                lblConvertFrom.text = "-" + "\(btn.tag)"
            } else {
                lblConvertFrom.text! += "\(btn.tag)"
            }
            
        } else if btn.tag == 10 {
            
            if lblConvertFrom.text == "0" {
                lblConvertFrom.text = "0."
            } else if lblConvertFrom.text?.rangeOfString(".") == nil {
                lblConvertFrom.text! += "."
            } else {
                
            }
            
        } else if btn.tag == 11 {
            
            if lblConvertFrom.text == "0" {
                lblConvertFrom.text = "-0"
            } else if lblConvertFrom.text?.rangeOfString("-") == nil {
                lblConvertFrom.text = "-" + lblConvertFrom.text!
            } else if lblConvertFrom.text?.rangeOfString("-") != nil {
                lblConvertFrom.text = lblConvertFrom.text?.stringByReplacingOccurrencesOfString("-", withString: "")
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
