//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation

class TipCalculatorModel {
    
    var total: Double
    var taxPct:Double
    var subtotal:Double{
        get {
            return total / (taxPct + 1)
        }
    }
    
    init(total:Double, taxPct:Double){
        self.total=total
        self.taxPct=taxPct
    }
    
    func calcTipWihtTipPct(tipPct:Double) -> (tipAmt:Double, total:Double){
        let tipAmt = subtotal * tipPct
        let finalTotal = total + tipAmt
        return (tipAmt,finalTotal)
    }
    
    func returnPossbleTips() -> [Int: (tipAmt:Double,total:Double)]{
        let possibleTipsInferred = [0.15,0.18,0.20]
        let possibleTipsExplict:[Double] = [0.15,0.18,0.20]
        
        var retval = Dictionary<Int,(tipAmt:Double,total:Double)>()
        
        for possible in possibleTipsInferred {
            let intPct = Int(possible*100)
            
            retval[intPct] = calcTipWihtTipPct(possible)
        }
        return retval
    }
}


