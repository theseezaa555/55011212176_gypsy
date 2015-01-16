// Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
let to=60
let yo=23
var total=to+yo
println(total)
let xx:Double = -19
let yy:Double = -19.99
let k=xx+yy
let name="Whose you daddy"
let name2:String="Storir"
let koy=name+"-----"+name2
//println(koy)
var hh=to+yo
var index: Int
for index = 0; index < yo; ++index{
    total += 1
    println(total)
}
var sholist = ["Eggs","Milk","Orange"]
println("The shooping list contains \(sholist.count) items.")
sholist.append("xxl")
for index = 0; index < sholist.count; ++index{
    println(sholist[index])
}
var firstItem=sholist[0]
//sholist[0]="Six Eggs"
//sholist[0...3] = ["banana"]
//println(sholist[0])
var aa=["koy","DDT"]
sholist += ["Bakking"]
println(sholist)
var firt = sholist[0]
sholist
let kkh = [0.1,0.85,0.70]
let kko:[Double] = [0.15,0.18,0.20]
let bbn = kkh+kko
println(bbn)
var numb = bbn.count
println(numb)
println("--------")
var str = ""
for str in sholist {
    println(str)
}
println("-------")
for index in 1...7 {
    println("\(index) times 5 is \(index * 5)")
}
println("-------")
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    println("\(animalName)s have \(legCount) legs")
}
var xxl = [String]() //empty
var airport: [String: String] = ["TYO": "Tokyo","DUB": "Dublin"]
if xxl.isEmpty {
    println("The airport is empty")
}else{
    println("The airport is not empty")
}