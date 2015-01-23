// Playground - noun: a place where people can play

import UIKit

class TipCalculator {
    
    let total: Double
    let taxPct:Double
    let subtotal:Double
    
    init(total:Double, taxPct:Double){
        self.total=total
        self.taxPct=taxPct
        subtotal=total / (taxPct+1)
    }
    
    func calcTipWihtTipPct(tipPct:Double) -> Double {
        return subtotal * tipPct
    }
    
    func returnPossbleTips() -> [Int: Double] {
        let possibleTipsInferred = [0.15,0.18,0.20]
        let possibleTipsExplict:[Double] = [0.15,0.18,0.20]
        
        var retval = Dictionary<Int,Double>()
        for possible in possibleTipsInferred {
            let intPct = Int(possible*100)
            
            retval[intPct] = calcTipWihtTipPct(possible)
        }
        return retval
    }
}
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)

tipCalc.returnPossbleTips()
