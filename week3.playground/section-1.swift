// Playground - noun: a place where people can play
import UIKit


class zoo{
    let ani:[String] = ["cat","bat","rat"]
    
    
    let upani:String
    
    init (ani:String) {
        self.upani = ani
    }
    
    func kko() -> String{
        var to:String = ""
        for(var i=0;i<ani.count;i++){
            if (upani=="cat"){
                to = "cat be satisfied by eating fish"
            }else if(upani=="bat"){
                to = "bat be satisfied by eating blood"
            }else if(upani=="rat"){
                to = "rat be satisfied by eating corn"
            }else{
                to = "no surch animal in zoo"
            }
        }
        return to
    }
    
}
let xx = zoo(ani: "rat")
xx.kko()



