//
//  ViewController.swift
//  WhatAreTheOdds
//
//  Created by Gabe on 3/29/16.
//  Copyright © 2016 GabeCabrera. All rights reserved.
//

import UIKit

let randomNumber = RandomNumber()

class ViewController: UIViewController, UITextFieldDelegate {

    //UI Elements
    @IBOutlet weak var rangeInputTextField: UITextField!
    @IBAction func touchFieldDidBeginEditing(sender: AnyObject) {
        print("Impressive")
        randomNumber.getRandomNumber(0)
        
    }
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}