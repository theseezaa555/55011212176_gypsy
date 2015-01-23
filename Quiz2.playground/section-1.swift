// Playground - noun: a place where people can play

import UIKit


class zoo{
    let ani:[String:String] = ["cat":"c","bat":"b","rat":"r"]
    
    let upani:String
    
    init (ani:String) {
        self.upani = ani
    }
    
    func kko() -> String{
        var to:String = ""
        for (key,value) in ani {
            if (key == upani){
                to = value
            }
        }
        return to
    }
    
}
let xx = zoo(ani: "bat")
xx.kko()
