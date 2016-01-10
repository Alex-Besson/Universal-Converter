//
//  HomeViewController.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-21.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit
import AVFoundation

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var categories: [CategoryModel] = [
        weight, temperature, time, currency, speed, area, volume, length, data, fuel, pressure, force, power, density, viscosity, torque, astronomy, angle ]
    
    var categorySelected: CategoryModel?
    
    // VIEW DID LOAD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAduioPlayer()

    }
   
    
    
    // TABLE VIEW FUNCTIONS
    
    var cell = CategoryCell()
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        cell = tableView.dequeueReusableCellWithIdentifier("HomeCell", forIndexPath: indexPath) as! CategoryCell
        
        cell.lblCategory.text = categories[indexPath.row].name
        cell.vwButtonBackground.backgroundColor = categories[indexPath.row].color
        cell.imgIcon.image = categories[indexPath.row].icon
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return self.view.frame.height / 7
    }
    
    func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath) {
        animateSelectedCell(tableView, indexPath: indexPath)
        playAudio()
    }
    
    func tableView(tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath) {
        animateSelectedCell(tableView, indexPath: indexPath)
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        categorySelected = categories[indexPath.row]
        if categorySelected?.name == "Currency" {
            if (Reachability.isConnectedToNetwork()){
               performSegueWithIdentifier("toConverterFromHome", sender: nil)
            } else if (NSUserDefaults.standardUserDefaults().objectForKey("currencyDict") != nil ){
                let alertController = UIAlertController(title: "No Internet Connection", message: "Would you like to use last used data?", preferredStyle: .Alert)
                let okayAction = UIAlertAction(title: "Ok", style: .Default, handler: { (action) -> Void in
                    self.performSegueWithIdentifier("toConverterFromHome", sender: nil)
                })
                let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
                alertController.addAction(cancelAction)
                alertController.addAction(okayAction)
                
                
                
                self.presentViewController(alertController, animated: true, completion: nil)
            } else {
                
                let alertController = UIAlertController(title: "No Internet Connection", message: "Please connect to the internet and try again.", preferredStyle: .Alert)
                let cancelAction = UIAlertAction(title: "Ok", style: .Default, handler: nil)
                
                alertController.addAction(cancelAction)
                self.presentViewController(alertController, animated: true, completion: nil)
                
                
            }

        } else {
        performSegueWithIdentifier("toConverterFromHome", sender: nil)
        }
    }
    
    // FUNCTION THAT EFFECTS CELL ANIMATION WHEN HIGHLIGHTED AND UNHIGHLIGHTED
    
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
    
    // AUDIO PLAYER SET UP
    
    var audioPlayer = AVAudioPlayer()
    let soundURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("CategoryButton", ofType: "mp3")!)
    
    func setUpAduioPlayer() {
        do {
            try audioPlayer = AVAudioPlayer(contentsOfURL: soundURL)
            audioPlayer.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    func playAudio() {
        audioPlayer.play()
    }
    
    // PREPARE FOR SEGUE
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toConverterFromHome" {
            if let destViewController: ConverterViewController = segue.destinationViewController as? ConverterViewController {
                destViewController.catSelected = categorySelected
            }
        }
    }
    
    
    
    
}
