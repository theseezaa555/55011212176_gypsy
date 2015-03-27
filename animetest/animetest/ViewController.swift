//
//  ViewController.swift
//  animetest
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollisionBehaviorDelegate {
    
    let barrier = UIView(frame: CGRect(x: 0, y: 300,width: 130,height: 20)) //สร้างสิ่งกีดขวาง
    var collision: UICollisionBehavior! //การชน
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior! //แรงดึงดูด
    var square: UIView!
    var firstContact: Bool! = false
    var snap: UISnapBehavior!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //สร้างสี่เหลี่ยม
        square = UIView(frame: CGRect(x: 100, y: 100, width: 100, height:100))
        square.backgroundColor = UIColor.grayColor()
        view.addSubview(square)
       
        //สร้างรูปเราให้มีการเคลื่อนไหว
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square]) //มีผลกระทบต่อไอเทมชื่อไอเทมสแคว
        animator.addBehavior(gravity)
        
        
        
        barrier.backgroundColor = UIColor.redColor() //สร้างสิ่งกีดขวางสีแดง
        view.addSubview(barrier) //เพิ่มในสตอรี่
        
        collision = UICollisionBehavior(items: [square]) //เพิ่มคุณลักษณะการชนเข้าไปด้วย
        collision.translatesReferenceBoundsIntoBoundary = true
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))//ชนแล้วจะเคลื่อนที่อย่างไร
        animator.addBehavior(collision)
        
        collision.action = {
            println("\(NSStringFromCGAffineTransform(self.square.transform)) \(NSStringFromCGPoint(self.square.center))")
        }
        
        let itemBehaviour = UIDynamicItemBehavior(items: [square]) //ยืดหยุ่น
        itemBehaviour.elasticity = 0.6
        animator.addBehavior(itemBehaviour)
        
        collision.collisionDelegate = self
       
    }
    
    func collisionBehavior(behavior: UICollisionBehavior, beganContactForItem item: UIDynamicItem!, withBoundaryIdentifier identifier: NSCopying!, atPoint p: CGPoint) {
        
        println("Boundary contact occurred - \(identifier)")
        
        
        let collidingView = item as UIView //ชนแล้วให้เปลี่ยนสี
        collidingView.backgroundColor = UIColor.yellowColor()
        UIView.animateWithDuration(2) { //เปลี่ยนนานแค่ไหน
            collidingView.backgroundColor = UIColor.grayColor()
        }
        
        if(!firstContact){
            firstContact = true //ถ้าผู้ใช้มีการสัมผัส
            
            let square = UIView(frame: CGRect(x: 30, y: 0, width: 100, height: 100))
            square.backgroundColor = UIColor.grayColor()
            view.addSubview(square)
            
            collision.addItem(square)
            gravity.addItem(square)
            
            let attach = UIAttachmentBehavior(item: collidingView, attachedToItem: square)
            animator.addBehavior(attach)
        }
        
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        if (snap != nil){
            animator.removeBehavior(snap)
        }
        
        let touch = touches.anyObject() as UITouch
        snap = UISnapBehavior(item: square, snapToPoint: touch.locationInView(view))
        animator.addBehavior(snap)
    }


}

