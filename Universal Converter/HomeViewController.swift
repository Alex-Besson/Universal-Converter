//
//  HomeViewController.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-21.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var categorySelected: CategorySwitch?
    var categorySelectedArray: [CategorySwitch] = [.Weight, .Temperature, .Time, .Currency, .Speed, .Area, .Volume, .Length, .Data, .Fuel, .Pressure, .Force, .Power]
    
    // ARRAYS TO LABEL AND COLOR THE BUTTONS
    
    var categories = ["Weight", "Temperature", "Time", "Currency", "Speed", "Area", "Volume", "Length/Distance", "Data", "Fuel", "Pressure", "Force", "Power/Electricity"]
    var colors = [
        UIColor(red: 124/255, green: 27/255, blue: 166/255, alpha: 1),
        UIColor(red: 2/255, green: 242/255, blue: 219/255, alpha: 1),
        UIColor(red: 1/255, green: 22/255, blue: 64/255, alpha: 1),
        UIColor(red: 242/255, green: 231/255, blue: 68/255, alpha: 1),
        UIColor(red: 242/255, green: 184/255, blue: 75/255, alpha: 1),
        UIColor(red: 145/255, green: 39/255, blue: 72/255, alpha: 1),
        UIColor(red: 0/255, green: 163/255, blue: 168/255, alpha: 1),
        UIColor(red: 32/255, green: 65/255, blue: 84/255, alpha: 1),
        UIColor(red: 78/255, green: 158/255, blue: 24/255, alpha: 1),
        UIColor(red: 215/255, green: 172/255, blue: 131/255, alpha: 1),
        UIColor(red: 140/255, green: 10/255, blue: 39/255, alpha: 1),
        UIColor(red: 244/255, green: 123/255, blue: 128/255, alpha: 1),
        UIColor(red: 200/255, green: 249/255, blue: 148/255, alpha: 1)
    ]
    var icons = [UIImage(named: "Weight.png"), UIImage(named: "Temperature.png"), UIImage(named: "Time.png"), UIImage(named: "Currency.png"), UIImage(named: "Speed.png"), UIImage(named: "Area.png"), UIImage(named: "Volume.png"), UIImage(named: "Length.png"), UIImage(named: "Data.png"), UIImage(named: "Fuel.png"), UIImage(named: "Pressure.png"), UIImage(named: "Force.png"), UIImage(named: "Power.png")]
    
    // VIEW DID LOAD

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // TABLE VIEW FUNCTIONS
    
    var cell = CategoryCell()
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCellWithIdentifier("HomeCell", forIndexPath: indexPath) as! CategoryCell
        
        cell = tableView.dequeueReusableCellWithIdentifier("HomeCell", forIndexPath: indexPath) as! CategoryCell
        
        cell.lblCategory.text = categories[indexPath.row]
        cell.vwButtonBackground.backgroundColor = colors[indexPath.row]
        cell.imgIcon.image = icons[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return self.view.frame.height / 8
    }
    
    func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath) {
        animateSelectedCell(tableView, indexPath: indexPath)
    }
    
    func tableView(tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath) {
        animateSelectedCell(tableView, indexPath: indexPath)
        categorySelected = categorySelectedArray[indexPath.row]
        performSegueWithIdentifier("toConverterFromHome", sender: nil)
        
    }
    
    // FUNCTION THAT EFFECTS CELL ANYMATION WHEN HIGHLIGHTED AND UNHIGHLIGHTED

    func animateSelectedCell(tableView: UITableView, indexPath: NSIndexPath) {
        let selectedCell: CategoryCell = tableView.cellForRowAtIndexPath(indexPath) as! CategoryCell
        
        if selectedCell.highlighted {
            
            UIView.animateWithDuration(0.01) { () -> Void in
                // BUTTON DEPRESS ANIMATION
                selectedCell.center.x = selectedCell.center.x + 2
                selectedCell.center.y = selectedCell.center.y + 2
                
                // HIDE SHADOWS ANIMATION
                selectedCell.vwButtonBackground.layer.shadowRadius = 0
                selectedCell.vwButtonBackground.layer.shadowOffset = CGSizeMake(2, 2)
                
            }
            
        } else {
            
            UIView.animateWithDuration(0.1, animations: { () -> Void in
                // BUTTON RAISE ANIMATION
                selectedCell.center.x = selectedCell.center.x - 2
                selectedCell.center.y = selectedCell.center.y - 2
                
                // SHOW SHADOWS ANIMATION
                selectedCell.vwButtonBackground.layer.shadowOffset = CGSizeMake(2, 2)
                selectedCell.vwButtonBackground.layer.shadowRadius = 4
                
            })
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toConverterFromHome" {
            if let destViewController: ConverterViewController = segue.destinationViewController as? ConverterViewController {
                destViewController.catSwitch = categorySelected
                destViewController.catArray = categories

            }
        }
    }
    

}
