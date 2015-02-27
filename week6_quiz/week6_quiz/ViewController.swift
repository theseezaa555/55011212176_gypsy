//
//  ViewController.swift
//  week6_quiz
//
//  Created by iStudents on 2/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import AssetsLibrary

class ViewController: UIViewController {

    @IBOutlet weak var UIImagecriew2: UIImageView!
    var context: CIContext!
    var filter: CIFilter!
    var beginImage: CIImage!
    var orientation: UIImageOrientation = .Up
    override func viewDidLoad() {
        super.viewDidLoad()
        let fileURL = NSBundle.mainBundle().URLForResource("002", withExtension: "png")
        beginImage = CIImage(contentsOfURL: fileURL)
        
        filter = CIFilter(name: "CISepiaTone")
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        filter.setValue(0.5, forKey: kCIInputIntensityKey)
        let outputImage = filter.outputImage
        context = CIContext(options: nil)
        
        println("\(beginImage)")
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        let newImage = UIImage(CGImage: cgimg)
        self.UIImagecriew2.image = newImage
        self.logAllFilter()
        
        
        
    }
    func logAllFilter(){
        let properties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        print(properties)
        
        for filterName: AnyObject in properties {
            let fltr = CIFilter(name: filterName as String)
            println(fltr.attributes())
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
           }

    @IBAction func pre(sender: AnyObject) {
        
    }

    @IBAction func next(sender: AnyObject) {
        
        var shoppingList: [String] = ["001", "002"]
        
        for(var i = 0; i < 2; i++) {
            
            let fileURL = NSBundle.mainBundle().URLForResource("i", withExtension: "png")
            beginImage = CIImage(contentsOfURL: fileURL)
        }
        
    }
}

