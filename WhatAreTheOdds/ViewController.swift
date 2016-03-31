//
//  ViewController.swift
//  WhatAreTheOdds
//
//  Created by Gabe on 3/29/16.
//  Copyright © 2016 GabeCabrera. All rights reserved.
//

import UIKit
//calls struct from RandomNumber.swift
 let randomNumber = RandomNumber()


class ViewController: UIViewController, UITextFieldDelegate {
    
    
    //UI Elements
    @IBOutlet weak var rangeInputTextField: UITextField?
    @IBOutlet weak var rolledNumber: UILabel?
    @IBAction func rollButton(sender: UIButton) {
    //to see if textbox can change label from user input
        
            rolledNumber?.text = "\(RandomNumber().pickRandom)"

        if let resignFirstResponder: Bool = resignFirstResponder(){
            self.rangeInputTextField?.resignFirstResponder()     //Closes keyboard
        }
        resignFirstResponder()
    }
        override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: Actions
    
    var rangeInput: Int? {
        get {
            return Int(rangeInputTextField?.text ?? "") // ERROR OCCURS HERE
        }
    }
}