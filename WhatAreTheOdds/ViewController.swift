//
//  ViewController.swift
//  WhatAreTheOdds
//
//  Created by Gabe on 3/29/16.
//  Copyright © 2016 GabeCabrera. All rights reserved.
//

import UIKit

//Hides keyboard when tapped anywhere on screen
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

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}