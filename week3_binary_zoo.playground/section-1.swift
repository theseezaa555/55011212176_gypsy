// Playground - noun: a place where people can play

import UIKit


class zoo{
    let ani:[String:String] = ["cat":"fish","bat":"blood","rat":"corn"]
    
    let upani:String
    
    init (ani:String) {
        self.upani = ani
    }
    
    func kko() -> String{
        var to:String = ""
        for (key,value) in ani {
            if (key == upani){
                to = "food to animal is "+value
            }
        }
        return to
    }
    
}
let xx = zoo(ani: "bat")
xx.kko()