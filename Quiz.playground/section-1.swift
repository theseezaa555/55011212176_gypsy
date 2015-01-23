// Playground - noun: a place where people can play
import UIKit


class zoo{
    let ani:[String] = ["cat","bat","rat"]
    let feed:[String] = ["a","b","r"]
    
    let upani:String
    
    init (ani:String) {
        self.upani = ani
    }
    
    func kko() -> String{
        var to:String = ""
        for(var i=0;i<ani.count;i++){
            if (ani[i]==upani){
                to = feed[i]
            }
        }
        return to
    }
    
}
let xx = zoo(ani: "rat")
xx.kko()






 