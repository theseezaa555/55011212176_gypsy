// Playground - noun: a place where people can play

import UIKit


class username{
    var wp:String
    var gg:[String] = ["the","zzz"]
    init (hot:String){
        self.wp = hot
    }
    func mmi(){
        var go:String = ""
        for(var i=0;i<gg.count;i++){
            
            if(gg[i]==wp){
                go= gg[i]
                println("User is collect")
                break
            }
        }
    }



}
let yy = username(hot: "the")
yy.mmi()


