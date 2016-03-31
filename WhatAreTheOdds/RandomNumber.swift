//
//  File.swift
//  WhatAreTheOdds
//
//  Created by Gabe on 3/29/16.
//  Copyright © 2016 GabeCabrera. All rights reserved.
//

import Foundation

let viewController =  ViewController()
var x = ViewController().rangeInput
var number = arc4random_uniform(UInt32(x)!)


//MARK: Class for random number

struct RandomNumber {
    // numberRange to change the value for 1...X(user input)
    //creates the list to be picked from. (pickRandom)
   func numberRange(high:  UInt32) ->Range<UInt32>{
    if let high = UInt32?(0){
        print("Invalid number")
            } else { let high = UInt32(number)
        }
        let range = 1...high
       return range
    }
    //pick random number from that list
    let pickRandom = arc4random_uniform(number)
}


// (Int(number) % range) + (low + 1)

//func numberRange(x: UInt32) {
//    var _number = Int(number)
//}
//☹️