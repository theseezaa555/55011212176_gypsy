// Playground - noun: a place where people can play
import UIKit


class zoo{
    var ani:[String:String] = ["cat":"123","bat":"1234","rat":"12345"]
    
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
let xx = zoo(ani: "cat")
xx.add("jaff", pAdd: "555")
xx.del("bat")
xx.edit("cat", pEdit: "22222")



