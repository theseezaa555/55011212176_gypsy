// Playground - noun: a place where people can play
import UIKit


class zoo{
    let ani:[String] = ["cat","bat","rat"]
    let ani2:[String] = ["แมว","ค้างคาว","หนู"]
    
    let upani:String
    
    init (ani:String) {
        self.upani = ani
    }
    
    func kko() -> String{
        var to:String = ""
        for(var i=0;i<ani.count;i++){
            if (upani==ani[i]){
                to = ani2[i]
                break
            }
        }
        return to
    }
    
}
let xx = zoo(ani: "cat")
xx.kko()



