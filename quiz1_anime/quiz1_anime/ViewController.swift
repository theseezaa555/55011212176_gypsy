//
//  ViewController.swift
//  quiz1_anime
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let coloredSquare = UIView()
    let size: CGFloat = CGFloat( arc4random_uniform(40))+20
    let yPosition : CGFloat = CGFloat(arc4random_uniform(200))+20
    
    @IBAction func but11(sender: AnyObject) {
        
        let coloredSquare = UIView()
        
     
        coloredSquare.backgroundColor = UIColor.blueColor()
        
        coloredSquare.frame = CGRect(x:0, y:170, width:50, height:50)
        
       
        self.view.addSubview(coloredSquare)
        
       
        UIView.animateWithDuration(1.0, animations: {
            coloredSquare.backgroundColor = UIColor.redColor()
            
           
            coloredSquare.frame = CGRect(x: 325, y: 170, width: 50, height: 50)
            
        })    }
    
    @IBAction func button1(sender: AnyObject) {
        let options = UIViewAnimationOptions.Autoreverse
        let coloredSquare = UIView()
        let size: CGFloat = CGFloat( arc4random_uniform(40))+20
        let yPosition : CGFloat = CGFloat(arc4random_uniform(200))+20

        coloredSquare.backgroundColor = UIColor.blueColor()
        coloredSquare.frame = CGRect(x: 0, y: yPosition, width: size, height: size)
        self.view.addSubview(coloredSquare)
        
        UIView.animateWithDuration(1.0, animations: {
            coloredSquare.backgroundColor = UIColor.redColor()
            coloredSquare.frame = CGRect(x: 325, y: yPosition, width: size, height: size)
            }, completion: { animationFinished in
                    coloredSquare.removeFromSuperview()
        })
        
        
        
        
        
        
        
      
        
        
    }
    @IBOutlet weak var sliderga: UISlider!
    
    @IBAction func but3(sender: AnyObject) {
        let numberofFish = Int(self.sliderga.value)
        for loopNumber in 1...numberofFish {
            
            
            let duration : NSTimeInterval = 1.0
            let delay = NSTimeInterval(900 + arc4random_uniform(100)) / 1000
            let options = UIViewAnimationOptions.CurveLinear
            
           
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
            
            
            let fish = UIImageView()
            fish.image = UIImage(named: "blue-fish.png")
            fish.frame = CGRectMake(0-size, yPosition, size, size)
            self.view.addSubview(fish)
            
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
               
                fish.frame = CGRectMake(320, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                   
                    fish.removeFromSuperview()
                    
            })
        }
        
    }
    
    
    
    override func viewDidLoad() {
//        super.viewDidLoad()
//        coloredSquare.backgroundColor = UIColor.blueColor()
//        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
//        self.view.addSubview(coloredSquare)
//        
//        UIView.animateWithDuration(1.0, animations: {
//          self.coloredSquare.backgroundColor = UIColor.redColor()
//            
//          self.coloredSquare.frame = CGRect(x: 325, y: 120, width: 50, height: 50)
//        })
//        let duration = 1.0
//        let delay = 0.0
//        let options = UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat
//        let damping = 0.5
//        let velocity = 500
//        
//        UIView.animateWithDuration(duration, animations: {
//            
//            },completion: { finished in
//        })
//        
//        
//        
//        UIView.animateWithDuration(1.0, delay: 0.0, options: options, animations: {
//            self.coloredSquare.backgroundColor = UIColor.redColor()
//            self.coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 5)
//        }, completion: nil)
    
    
}//end of viewDidload
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

