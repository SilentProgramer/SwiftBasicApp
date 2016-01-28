//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by hemant on 1/28/16.
//  Copyright © 2016 Hemant. All rights reserved.
//

class TipCalculatorModel {
    
    //properties
    var total:Double
    var taxPct: Double
    var subtotal: Double {
        get{
            return total / (taxPct + 1)
        }
    }
    
    //constructor
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
    }
    
    
    //functions
    func calcTipWithTipPct(tipPct:Double) -> Double {
        return subtotal * tipPct
    }
    
    func returnPossibleTips() -> [Int: Double]{
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        
        var retval = [Int:Double]()
        for possibleTip in possibleTipsInferred{
            let intPct = Int(possibleTip * 100)
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}