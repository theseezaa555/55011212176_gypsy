//
//  ViewController.swift
//  week4_1
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var sum1 = 0
    var sum2 = 0
    var sum3 = 0
    var sum4 = 0
    var sum5 = 0
    var sum6 = 0
    var sum7 = 0
    var sum8 = 0
    var sum9 = 0
    var sum10 = 0
    var sum11 = 0
    var sum12 = 0
    @IBAction func one(sender: AnyObject) {
        sum1 += 1
        l1.text = String(sum1)
        
        
    }

    
    @IBAction func two(sender: AnyObject) {
        sum2 += 2
        l2.text = String(sum2)
    }
    
    @IBAction func tree(sender: AnyObject) {
        sum3 += 3
        l3.text = String(sum3)
    }
    @IBAction func four(sender: AnyObject) {
        sum4 += 4
        l4.text = String(sum4)
    }

    @IBAction func five(sender: AnyObject) {
        sum5 += 5
        l5.text = String(sum5)

    }
   
    @IBAction func six(sender: AnyObject) {
        sum6 += 6
        l6.text = String(sum6)

    }
    
    @IBAction func seven(sender: AnyObject) {
        sum7 += 7
        l7.text = String(sum7)

    }
   
    @IBAction func eight(sender: AnyObject) {
        sum8 += 8
        l8.text = String(sum8)

    }
    
    @IBAction func nine(sender: AnyObject) {
        sum9 += 9
        l9.text = String(sum9)

    }
    @IBAction func ten(sender: AnyObject) {
        sum10 += 10
        l10.text = String(sum10)

    }
    
    @IBAction func ee(sender: AnyObject) {
        sum11 += 11
        l11.text = String(sum11)
    }
    @IBAction func ww(sender: AnyObject) {
        sum12 += 12
        l12.text = String(sum12)
    }
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var l5: UILabel!
    @IBOutlet weak var l6: UILabel!
    @IBOutlet weak var l7: UILabel!
    @IBOutlet weak var l8: UILabel!
    @IBOutlet weak var l9: UILabel!
    @IBOutlet weak var l10: UILabel!
    @IBOutlet weak var l11: UILabel!
    @IBOutlet weak var l12: UILabel!
    @IBAction func reset(sender: AnyObject) {
        sum1 = 0
        sum2 = 0
        sum3 = 0
        sum4 = 0
        sum5 = 0
        sum6 = 0
        sum7 = 0
        sum8 = 0
        sum9 = 0
        sum10 = 0
        sum11 = 0
        sum12 = 0
     
      
        
        l1.text = "0"
        l2.text = "0"
        l3.text = "0"
        l4.text = "0"
        l5.text = "0"
        l6.text = "0"
        l7.text = "0"
        l8.text = "0"
        l9.text = "0"
        l10.text = "0"
        l11.text = "0"
        l12.text = "0"

        
        
     
    }
}

