// Playground - noun: a place where people can play
import UIKit


class zoo{
    var ani:[String:String] = ["199/1":"Supar","199/3":"yip","199/4":"koy"]
    
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
    func add(uAdd:String, pAdd:String){
        ani[uAdd] = pAdd
    }
    func del(uDel:String){
        ani[uDel] = nil
    }
    func edit(uEdit:String,pEdit:String){
        ani[uEdit] = pEdit
    }
    
}
let xx = zoo(ani: "199/1")
xx.add("199/4", pAdd: "Gypsy")
xx.del("199/3")
xx.edit("199/4", pEdit: "KKU")