//
//  KeyboardButton.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-24.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit
import AVFoundation

class KeyboardButton: UIButton {
    
    var topColor = UIColor(red: 50/255, green: 50/255, blue: 52/255, alpha: 1).CGColor
    var bottomColor = UIColor(red: 31/255, green: 33/255, blue: 36/255, alpha: 1).CGColor
    
    let gradientLayer = CAGradientLayer()
    
    var audioPlayer = AVAudioPlayer()
    let soundURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("KeyboardButton", ofType: "mp3")!)
    
    // AWAKE FROM NIB
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 2
        self.clipsToBounds = true
        
        addGradientLayerColors(topColor, bottom: bottomColor)
        
        self.addTarget(ConverterViewController(), action: "buttonPressed:", forControlEvents: UIControlEvents.TouchDown)
        self.addTarget(ConverterViewController(), action: "buttonReleased:", forControlEvents: UIControlEvents.TouchUpInside)
        
        setUpButtonAudio()
    }
    
    // AUDIO PLAYER SET UP
    
    func setUpButtonAudio() {
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
    
    // ON BUTTON PRESS AND RELEASE
    
    func buttonPressed(sender: KeyboardButton) {
        addGradientLayerColors(bottomColor, bottom: bottomColor)
        self.center.x++
        self.center.y++
        playAudio()
    }
    
    func buttonReleased(sender: KeyboardButton) {
        addGradientLayerColors(topColor, bottom: bottomColor)
        self.center.x--
        self.center.y--
        playAudio()
    }
    
    // CONFIGURING GRADIENT LAYER
    
    func addGradientLayerColors(top: CGColor, bottom: CGColor) {
            
        self.layer.insertSublayer(gradientLayer, atIndex: 0)
        gradientLayer.frame.size = self.bounds.size
            
        gradientLayer.colors = [top, bottom]
        gradientLayer.locations = [0.3, 0.4]
        
    }
    
    func resetGradientLayer() {
        
        self.clipsToBounds = false
        addGradientLayerColors(topColor, bottom: bottomColor)
        self.clipsToBounds = true
        layoutIfNeeded()
    }

}
