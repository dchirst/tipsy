//
//  TipBrain.swift
//  Tipsy
//
//  Created by Dan Hirst on 07/02/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation


struct TipBrain {
    var tip: Float = 0.1
    var bill: Float = 0.0
    var split: Int = 2
    
    mutating func updateTip(newTip: Float) {
        self.tip = newTip
    }
    
    mutating func updateSplit(newSplit: Int) {
        self.split = newSplit
    }
    
    mutating func updateBill(newBill: Float) {
        self.bill = newBill
    }
    
    func calculateSplit() -> Float {
        return (bill * (1 + tip)) / Float(split)
    }
}
