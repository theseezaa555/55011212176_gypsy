// Playground - noun: a place where people can play

import UIKit

func returnPossbleTips() -> [Int: Double] {
    let possibleTipsInferred = [0.15,0.18,0.20]
    let possibleTipsExplict:[Double] = [0.15,0.18,0.20]
    
    var retval = Dictionary<Int,Double>()
    for possible in possibleTipsInferred {
        let intPct = Int(possible*100)
        
        retval[intPct] = calcTipWithTipPct(possible)
    }
    return retval
}
