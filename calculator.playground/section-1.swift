
class TipCalculator {
    
    
    let total: Double
    let taxPct: Double
    init (total:Double,taxPct:Double){
        self.total=total
        self.taxPct=taxPct
    }
    
   
    func process() -> Double{
        let total1 = total + taxPct
        return total1
    }
    func process1() -> Double{
        let total2 = total - taxPct
        return total2
    }
    func process2() -> Double{
        let total3 = total * taxPct
        return total3
    }
    func process3() -> Double{
        let total4 = total / taxPct
        return total4
    }
    func process4() -> Double{
        let total5 = total % taxPct
        return total5
    }
  
   

    
    
    

}
let tipCalc = TipCalculator(total: 10, taxPct: 10)
tipCalc.process()
tipCalc.process1()
tipCalc.process2()
tipCalc.process3()
tipCalc.process4()

