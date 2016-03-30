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
    
    var audioPlayer = AVAudioPlayer()
    let soundURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("KeyboardButton", ofType: "mp3")!)
    
    // AWAKE FROM NIB
    
    override func awakeFromNib() {
        
        configureButton()
        
        self.addTarget(ConverterViewController(), action: #selector(KeyboardButton.buttonPressed(_:)), forControlEvents: UIControlEvents.TouchDown)
        self.addTarget(ConverterViewController(), action: #selector(KeyboardButton.buttonReleased(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
//        setUpButtonAudio()
    }
    
    func configureButton() {
        
        self.titleLabel?.font = UIFont(name: "Futura", size: 15)
        self.titleLabel?.textColor = UIColor(white: 245/255, alpha: 1)
        self.titleLabel?.tintColor = UIColor(white: 245/255, alpha: 1)
        
        self.layer.cornerRadius = 2
        self.layer.borderColor = UIColor(white: 245/255, alpha: 1).CGColor
        self.layer.borderWidth = 1
        self.clipsToBounds = true
        
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
        self.backgroundColor = CustomColors.offWhiteColor()
        self.titleLabel?.textColor = CustomColors.backgroundColor()
        self.setTitleColor(CustomColors.backgroundColor(), forState: UIControlState.Normal)
        
    }
    
    func buttonReleased(sender: KeyboardButton) {
        self.backgroundColor = CustomColors.backgroundColor()
        self.titleLabel?.textColor = CustomColors.offWhiteColor()
        self.setTitleColor(CustomColors.offWhiteColor(), forState: UIControlState.Normal)
        
    }
    
}
