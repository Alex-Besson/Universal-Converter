//
//  DonateVC.swift
//  Universal Converter
//
//  Created by Miwand Najafe on 2015-12-28.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit


class DonateVC: UIViewController {

    @IBOutlet weak var expireDateTextField: UITextField!
    @IBOutlet weak var cardNumberTextField: UITextField!
    @IBOutlet weak var cvcTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    @IBAction func donate(sender:AnyObject) {
        
        let stripeCard = STPCardParams()
       
        
        if self.expireDateTextField.text?.isEmpty == false {
            guard let expirationDate = self.expireDateTextField.text?.componentsSeparatedByString("/") else {
                return
            }
             let expMonth = UInt(Int(expirationDate[0])!)
            let expYear = UInt(Int(expirationDate[1])!)
            
            // Send the card info to Stripe to get the token
            
            stripeCard.number = self.cardNumberTextField.text
            stripeCard.cvc = self.cvcTextField.text
            stripeCard.expMonth = expMonth
            stripeCard.expYear = expYear
            
            do {
                try stripeCard.validateCardReturningError()
                STPAPIClient.sharedClient().createTokenWithCard(stripeCard, completion: { (token, error) -> Void in
                    if (error != nil) {
                        self.handleError(error!)
                        return
                    }
                    
                self.postStripeToken(token!)
                 
                })
                
            } catch {
                print("error found \(error)")
            }
            
        
        
        }
    }
    

 
}
