//
//  ViewController.swift
//  WhatAreTheOdds
//
//  Created by Gabe on 3/29/16.
//  Copyright © 2016 GabeCabrera. All rights reserved.
//

import UIKit


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

    //UI Elements

    @IBOutlet weak var rangeInputTextField: UITextField!
    @IBAction func touchFieldDidBeginEditing(sender: AnyObject) {
        print("You pressed me")
    }
    @IBOutlet weak var rolledNumber: UILabel!
    @IBAction func rollButton(sender: UIButton) {
        
        let rangeInput = UInt32(self.rangeInputTextField.text!)!
        rolledNumber?.text = randomNumber.getRandomNumber(rangeInput)
        self.rangeInputTextField!.resignFirstResponder() //Closes keyboard
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    
        
//            //Close keyboard with tap somewhere on screen, so you dont have to press the button to close the keyboard
//            let tapOffKeyboard: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
//            view.addGestureRecognizer(tapOffKeyboard)
//        
//        func dismissKeyboard() {
//            //Causes the view (or one of its embedded text fields) to resign the first responder status.
//            view.endEditing(true)
//        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}