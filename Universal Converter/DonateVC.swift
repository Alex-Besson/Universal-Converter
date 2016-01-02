//
//  DonateVC.swift
//  Universal Converter
//
//  Created by Miwand Najafe on 2015-12-28.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit


class DonateVC: UIViewController, STPPaymentCardTextFieldDelegate, UITextFieldDelegate {
    
    
    var amountTextField = CustomTextField()
    var emailTextField = CustomTextField()
    var card = STPPaymentCardTextField()
    var btnDonate = donateButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configStripeTxtFld()
        configEmailTxtfld()
        configAmountTxtfld()
        configDonateBtn()
    }
    // Configure email textfield
    
    func configEmailTxtfld() {
        self.emailTextField.frame = CGRectMake(15, 75, self.view.frame.width - 30, 43)
        
        let emailPlaceHolder = NSAttributedString(string: "Optional email address", attributes: [NSForegroundColorAttributeName:UIColor.lightGrayColor()])
        self.emailTextField.attributedPlaceholder = emailPlaceHolder
        
        self.emailTextField.keyboardType = UIKeyboardType.EmailAddress
        self.emailTextField.delegate = self
        self.view.addSubview(emailTextField)
        
    }
    
    // Configure funding amount textfield
    
    func configAmountTxtfld() {
        
        self.amountTextField.frame = CGRectMake(15, 135, self.view.frame.width - 30, 43)
        
        
        let amountPlaceHolder = NSAttributedString(string: "$ USD", attributes: [NSForegroundColorAttributeName:UIColor.lightGrayColor()])
        
        self.amountTextField.attributedPlaceholder = amountPlaceHolder
        self.amountTextField.keyboardType = UIKeyboardType.DecimalPad
        self.amountTextField.delegate = self
        
        self.view.addSubview(amountTextField)
        
    }
    
    
    // Configure Stripe default textfield
    
    func configStripeTxtFld(){
        self.card.frame = CGRectMake(15, 15, self.view.frame.width - 30, 43)
        
        card.textColor = UIColor.purpleColor()
        card.textErrorColor = UIColor.redColor()
        
        card.delegate = self
        
        self.view.addSubview(card)
    }
    
    // Configure donate button
    
    func configDonateBtn() {
        self.btnDonate.frame = CGRectMake(self.view.frame.width/3, self.view.frame.height/2, 100, 43)
        
        self.view.addSubview(btnDonate)
        
             self.btnDonate.addTarget(self, action: "donateAction:", forControlEvents: .TouchUpInside)
   
    }
    
    // Handle error with cards
    
    func handleError(error: NSError) {
        let cardErrorAC = UIAlertController(title: "Please Try Again", message: error.localizedDescription, preferredStyle: .Alert)
        let okayBtn = UIAlertAction(title: "Ok", style: .Cancel, handler: nil)
        cardErrorAC.addAction(okayBtn)
        
        self.presentViewController(cardErrorAC, animated: true, completion: nil)
    }
    
    func postStripeToken(token: STPToken) {
        let URL = "https://guarded-mesa-9087.herokuapp.com/payment.php"
        
        if self.amountTextField.text?.isEmpty == true {
            let emptyAmountError = NSError.init(domain: "No amount entered", code: 13, userInfo: .None)
            
            self.handleError(emptyAmountError)
            return
        }
        
            
        let params: Dictionary<String,AnyObject> = ["stripeToken": token.tokenId,
            "amount": Int(self.amountTextField.text!)!,
            "currency": "usd",
            "description": self.emailTextField.text!]
        
        
        
        let manager = AFHTTPSessionManager()
        manager.responseSerializer.acceptableContentTypes = NSSet(array: ["text/plain", "text/html", "application/json"]) as! Set<String>
        
        manager.POST(URL, parameters: params, success: { (operation, responseObject) -> Void in
            guard let response = responseObject as? [String: String] else {
                print("failed")
                return
            }
            
            let transAlertController = UIAlertController(title: response["status"], message: response["message"], preferredStyle: .Alert)
            let okayAction = UIAlertAction(title: "Ok", style: .Cancel, handler: nil)
            transAlertController.addAction(okayAction)
            
            self.presentViewController(transAlertController, animated: true, completion: nil)
            
            }) { (operation, error) -> Void in
                
                print(error.localizedRecoverySuggestion)
                print(error.localizedFailureReason)
                self.handleError(error)
        }
        
    }
    
   func donateAction(sender:AnyObject) {
    
    UIView.animateWithDuration(0.5, animations: { () -> Void in
        
        let transformOne = CGAffineTransformMakeScale(0.96, 0.96)
        let transformTwo = CGAffineTransformMakeTranslation(2, 1.5)
         self.btnDonate.transform = CGAffineTransformConcat(transformOne, transformTwo)
        
        
        }) { (done) -> Void in
            
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                self.btnDonate.transform = CGAffineTransformIdentity
               
                })
    }
        let stripeCard = STPCardParams()
        
        stripeCard.number = self.card.cardNumber
        stripeCard.cvc = self.card.cvc
        stripeCard.expMonth = self.card.expirationMonth
        stripeCard.expYear = self.card.expirationYear
        
        do {
            try stripeCard.validateCardReturningError()
            STPAPIClient.sharedClient().createTokenWithCard(stripeCard, completion: { (token, error) -> Void in
                if error != nil {
                    self.handleError(error!)
                    return
                }
                self.postStripeToken(token!)
               
            })
            
        } catch {
            self.handleError(error as! NSError)
        }
    
    
    }
   
    
    
}
