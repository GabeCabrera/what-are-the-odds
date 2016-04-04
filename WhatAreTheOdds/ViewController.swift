//
//  ViewController.swift
//  WhatAreTheOdds
//
//  Created by Gabe on 3/29/16.
//  Copyright © 2016 GabeCabrera. All rights reserved.
//

import UIKit


//Keyboard set up.

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}



let randomNumber = RandomNumber()

class ViewController: UIViewController, UITextFieldDelegate {
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

    //UI Elements

    @IBOutlet weak var rangeInputTextField: UITextField!
    @IBAction func touchFieldDidBeginEditing(sender: AnyObject) { randomNumber.getRandomNumber(0) }
    @IBOutlet weak var rolledNumber: UILabel!
    @IBAction func rollButton(sender: UIButton) {
        
        if ((UInt32(self.rangeInputTextField.text!)) != nil &&
            (UInt32(self.rangeInputTextField.text!)) > 0) {
            
            let rangeInput = UInt32(self.rangeInputTextField.text!)!
            rolledNumber?.text = randomNumber.getRandomNumber(rangeInput)
            self.rangeInputTextField!.resignFirstResponder() //Closes keyboard
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        rangeInputTextField.delegate = self
        
    }
    
    //limits max characters in text field.
  
    func textField(textField:UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool{
        let maxLength = 3
        let currentString: NSString = textField.text!
        let newString: NSString =
        currentString.stringByReplacingCharactersInRange(range, withString: string)
        return newString.length <= maxLength
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}