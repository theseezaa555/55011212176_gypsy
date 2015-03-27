//
//  ViewController.swift
//  quize2_anime
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let container = UIView()
    let redSquare = UIView()
    let blueSquare = UIView()
    let fish = UIImageView()
    let path = UIBezierPath()
    
    
    @IBOutlet var conl: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        fish.image = UIImage(named: "blue-fish.png")
        fish.frame = CGRect(x: 50, y: 300, width: 50, height: 50)
        self.view.addSubview(fish)
        
       
        self.container.frame = CGRect(x: 60, y: 60, width: 200, height: 200)
        self.view.addSubview(container)
        
      
        self.redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.blueSquare.frame = redSquare.frame
        
      
        self.redSquare.backgroundColor = UIColor.redColor()
        self.blueSquare.backgroundColor = UIColor.blueColor()
        
        
        self.container.addSubview(self.redSquare)
    }

    @IBAction func but1(sender: AnyObject) {
        
        
        let views = (frontView: self.redSquare, backView: self.blueSquare)
        
        
        let transitionOptions = UIViewAnimationOptions.TransitionCurlUp
        
        UIView.transitionWithView(self.container, duration: 1.0, options: transitionOptions, animations: {
          
            views.frontView.removeFromSuperview()
            
            
            self.container.addSubview(views.backView)
            
            }, completion: { finished in
                
        })
        
    }
    @IBAction func but2(sender: AnyObject) {
        var views : (frontView: UIView, backView: UIView)
        
        if((self.redSquare.superview) != nil){
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else {
            views = (frontView: self.blueSquare, backView: self.redSquare)
        }
        
        // set a transition style
        let transitionOptions = UIViewAnimationOptions.TransitionCurlDown
        
        // with no animation block, and a completion block set to 'nil' this makes a single line of code
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
        
        
    }
    @IBAction func but3(sender: AnyObject) {
        var views : (frontView: UIView, backView: UIView)
        
        if((self.redSquare.superview) != nil){
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else {
            views = (frontView: self.blueSquare, backView: self.redSquare)
        }
        
        
        let transitionOptions = UIViewAnimationOptions.TransitionFlipFromLeft
        
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
        
        
    }
    
    @IBOutlet weak var show: UIImageView!
    
    @IBAction func but4(sender: AnyObject) {
        
        
        
        
        
        
        let fullRotation = CGFloat(M_PI * 2)
        
        UIView.animateWithDuration(1.0, animations: {
            self.fish.transform = CGAffineTransformMakeRotation(fullRotation)
        })
        
        //*************
        let duration = 2.0
        let delay = 0.0
        let options = UIViewKeyframeAnimationOptions.CalculationModeLinear
        
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: options, animations: {
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/3, animations: {
                
                self.fish.transform = CGAffineTransformMakeRotation(1/3 * fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(1/3, relativeDuration: 1/3, animations: {
                self.fish.transform = CGAffineTransformMakeRotation(2/3 * fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(2/3, relativeDuration: 1/3, animations: {
                self.fish.transform = CGAffineTransformMakeRotation(3/3 * fullRotation)
            })
            
            }, completion: {finished in
               
        })
        
    }
    @IBAction func but5(sender: AnyObject) {
        
        for i in 0...5 {
            
            // create a square
            let fish = UIImageView()
            fish.image = UIImage(named: "blue-fish.png")
            fish.frame = CGRect(x: 50, y: 100, width: 50, height: 50)
            self.view.addSubview(fish)
            
            // randomly create a value between 0.0 and 150.0
            let randomYOffset = CGFloat( arc4random_uniform(150))
            
            // for every y-value on the bezier curve
            // add our random y offset so that each individual animation
            // will appear at a different y-position
            let path = UIBezierPath()
            path.moveToPoint(CGPoint(x: 16,y: 239 + randomYOffset))
            path.addCurveToPoint(CGPoint(x: 301, y: 239 + randomYOffset), controlPoint1: CGPoint(x: 136, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 178, y: 110 + randomYOffset))
            
            // create the animation
            let anim = CAKeyframeAnimation(keyPath: "position")
            anim.path = path.CGPath
            anim.rotationMode = kCAAnimationRotateAuto
            anim.repeatCount = Float.infinity
            anim.duration = Double(arc4random_uniform(40)+30) / 10
            anim.timeOffset = Double(arc4random_uniform(290))
            // add the animation 
            fish.layer.addAnimation(anim, forKey: "animate position along path")
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

