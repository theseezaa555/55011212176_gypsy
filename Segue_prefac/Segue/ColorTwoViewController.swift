//
//  ColorTwoViewController.swift
//  Segue
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:ColorTwoViewController,text:String)
}
class ColorTwoViewController: UIViewController {

    var delegate:ColorTwoViewControllerDelegate? = nil
    var colorString = ""
    
    
    var faculties = Array<balloon>()
    
    @IBOutlet weak var colorshow1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
 faculties = data().getData()
        // Do any additional setup after loading the view.
        colorlabel.text = colorString
        //roop
    }

    @IBAction func saveColor(sender: UIBarButtonItem) {
        if (delegate != nil){
            delegate!.myVCDidFinish(self, text: colorlabel!.text!)
        }
    }
   
    @IBOutlet weak var titlelabel: UILabel!
    
    @IBOutlet weak var colorlabel: UILabel!
    
    @IBAction func colorSelectionButton(sender: UIButton) {
      colorlabel.text = sender.titleLabel!.text!
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
