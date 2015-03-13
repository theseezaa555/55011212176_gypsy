//
//  ViewController.swift
//  Exam1_55011212176
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    let celldentifier = "cellIdentifier"
    var  sortedKey:[String] = []
    var spf:[String] = []
    var pdf:[String] = []
    var sum:Double = 0
    @IBOutlet weak var nameofsub: UITextField!
    @IBOutlet weak var midterm: UITextField!
    @IBOutlet weak var submid: UITextField!
    @IBOutlet weak var kanankeb: UITextField!
    @IBOutlet weak var sunkanankeb: UITextField!
    @IBOutlet weak var final: UITextField!
    @IBOutlet weak var suboffinal: UITextField!
    
    @IBAction func cal(sender: UIButton) {
        var subject = nameofsub.text
        var mid = submid.text
        var mid1 = submid.text.toInt()
        
        var kanan = sunkanankeb.text
        var kanan1 = sunkanankeb.text.toInt()
        
        var fi = suboffinal.text
        var fi1 = suboffinal.text.toInt()
        
        
        var md = midterm.text.toInt()
        var sc = kanankeb.text.toInt()
        var fn = final.text.toInt()
        var sumscore:Int = md! + sc! + fn!
        //println(sumscore)
        if(sumscore == 100 && mid1 <= md && kanan1 <= sc && fi1 <= fn){
            
            let xmid:Double = (mid as NSString).doubleValue
            //let rexxx = String(format: "%0.2f",xmid)
            let ykeb:Double = (kanan as NSString).doubleValue
            //let reyyy = String(format: "%0.2f",ykeb)
            let zfinal:Double = (fi as NSString).doubleValue
            //let rezzz = String(format: "%0.2f",zfinal)
            sum = xmid + ykeb + zfinal
            //println(sum)
            var re = String(format: "%0.2f",sum)
            var reall = CalGrade(sum)
            sortedKey.append(reall)
            spf.append(subject)
            
            show.reloadData()
            
          
            
          
      
        
            
      
        
        // var sumall:Double = rexxx+reyyy+rezzz
        
        
        //var re = String(format: "%0.2f",Umid)
        
       // println("My grade of \(subject) : \(Umid)")
        
        
        }else{
            let alert = UIAlertController(title: "Score not found !!", message: "100 percen only and My score less than Full score", preferredStyle: .Alert)
            let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(okButton)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func cal2(sender: AnyObject) {
        var subject = nameofsub.text
        var mid = submid.text
        var mid1 = submid.text.toInt()
        
        var kanan = sunkanankeb.text
        var kanan1 = sunkanankeb.text.toInt()
        
        var fi = suboffinal.text
        var fi1 = suboffinal.text.toInt()
        
        
        var md = midterm.text.toInt()
        var sc = kanankeb.text.toInt()
        var fn = final.text.toInt()
        
        let xmid:Double = (mid as NSString).doubleValue
        //let rexxx = String(format: "%0.2f",xmid)
        let ykeb:Double = (kanan as NSString).doubleValue
        //let reyyy = String(format: "%0.2f",ykeb)
        let zfinal:Double = (fi as NSString).doubleValue
        //let rezzz = String(format: "%0.2f",zfinal)
        sum = xmid + ykeb + zfinal
        var final5 = xmid + ykeb + (zfinal*(100+5)/100)
        var final10 = xmid + ykeb + (zfinal*(100+10)/100)
        var final15 = xmid + ykeb + (zfinal*(100+15)/100)
        
        
        //println(sum)
        var re = String(format: "%0.2f",sum)
        var reall = CalGrade(sum)
        sortedKey.append(reall)
        spf.append(subject)
        
        show.reloadData()
        
        
       
        
    }
    
    
    @IBOutlet weak var show: UITableView!
    
    
    
    func CalGrade(score:Double) -> String{
    
        var result:String = ""
        if(score>=80.00 && score<=100.00){
            result = "A"
        }
        else if(score>=74.00 && score<=79.99){
            result = "B+"
        }
        else if(score>=68.00 && score<=73.99){
            result = "B"
        }
        else if(score>=62.00 && score<=67.99){
            result = "C+"
        }
        else if(score>=56.00 && score<=61.99){
            result = "C"
        }
        else if(score>=50 && score<=55.99){
            result = "D+"
        }
        else if(score>=44 && score<=49.99){
            result = "D"
        }
        else if(score<=43){
            result = "F"
        }
        
        return result
        
    }

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        show.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortedKey.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        cell.textLabel!.text = "Grade\(spf) is"
        cell.detailTextLabel!.text = "[\(sum)]\(self.sortedKey[indexPath.row])"
        return cell
    }
    


}

