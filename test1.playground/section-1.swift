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
    
    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTipsInferred = [0.15,0.18,0.20]
        let possibleTipsExplicit:[Double] = [0.15,0.18,0.20]
        var numberOfItems = possibleTipsInferred.count
        
        var retval = [Int:Double]()
        for possible in possibleTipsInferred{
            let intPct = Int(possible*100)
            
            retval[intPct] = calcTipWihtTipPct(possible)
        }
        return retval
    }
}
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()