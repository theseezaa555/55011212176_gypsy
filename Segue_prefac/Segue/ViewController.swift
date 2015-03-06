//
//  ViewController.swift
//  Segue
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ColorTwoViewControllerDelegate {
    
    @IBOutlet weak var showpic: UIImageView!
    @IBOutlet weak var colorLabel: UILabel!
    var x = ""
    override func viewDidLoad() {
        
        
        showpic.image = UIImage(named: "msu1.jpg")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        
        x = colorLabel.text!
        
        showpic.image = UIImage(named: "\(x).jpg")
    
    }
    func myVCDidFinish(controller: ColorTwoViewController, text: String) {
        colorLabel.text = "" + text
        controller.navigationController?.popViewControllerAnimated(true)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "mySegue"{
            let vc = segue.destinationViewController as ColorTwoViewController
            vc.colorString = x
            vc.delegate = self
        }
    }
}

