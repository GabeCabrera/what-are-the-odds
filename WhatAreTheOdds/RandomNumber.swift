//
//  File.swift
//  WhatAreTheOdds
//
//  Created by Gabe on 3/29/16.
//  Copyright © 2016 GabeCabrera. All rights reserved.
//

import Foundation

struct RandomNumber {
    func getRandomNumber(x: UInt32) -> String{
        return String(arc4random_uniform(x) + 1)
    }
}