//
//  ViewController.swift
//  CoreImageView
//
//  Created by iStudents on 2/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import AssetsLibrary
import MobileCoreServices

class ViewController: UIViewController ,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    
    @IBOutlet weak var UIImageCiew: UIImageView!
    var context: CIContext!
    var filter: CIFilter!
    var beginImage: CIImage!
    var orientation: UIImageOrientation = .Up
    var imagePicker: UIImagePickerController!
    var newMedia: Bool?
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        
        //let fileURL = NSBundle.mainBundle().URLForResource("image", withExtension: "png")
       // beginImage = CIImage(contentsOfURL: fileURL)
        
        filter = CIFilter(name: "CISepiaTone")
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        filter.setValue(0.5, forKey: kCIInputIntensityKey)
        let outputImage = filter.outputImage
        context = CIContext(options: nil)
        
        println("\(beginImage)")
       // let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
       // let newImage = UIImage(CGImage: cgimg)
        //self.UIImageCiew.image = newImage
        //self.logAllFilter()
        
        
    }

    @IBAction func loadbut(sender: AnyObject) {
        let pickerC = UIImagePickerController()
        pickerC.delegate = self
        self.presentViewController(pickerC, animated: true, completion: nil)
        
    }
    @IBAction func savebut(sender: AnyObject) {
//        let imageTosave = filter.outputImage
//        
//        let softwareContext = CIContext(options: [kCIContextUseSoftwareRenderer:true])
//        
//        let cgimg = softwareContext.createCGImage(imageTosave, fromRect: imageTosave.extent())
//        
//        let library = ALAssetsLibrary()
//        library.writeImageToSavedPhotosAlbum(cgimg, metadata: imageTosave.properties(), completionBlock: nil)
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .Camera
        imagePicker.mediaTypes = [kUTTypeImage as NSString]
        presentViewController(imagePicker, animated: true, completion: nil)
        
        newMedia = true
    }
    
    func image(image: UIImage, didFinishSavingWithError error:NSErrorPointer, contextInfo:UnsafePointer<Void>){
        if (error != nil) {
            let alert = UIAlertController(title: "Save Failed", message: "Failed to save image", preferredStyle: UIAlertControllerStyle.Alert)
            
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
            
            alert.addAction(cancelAction)
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    
    
    
    
    
    @IBOutlet weak var amountSlider: UISlider!
    @IBAction func amountSliderValueChanged(sender: UISlider) {
        let sliderValue = sender.value
        
        let outputImage = self.oldPhoto(beginImage, withAmount: sliderValue)
        
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        
        let newImage = UIImage(CGImage: cgimg, scale: 1, orientation: orientation)
        
        self.UIImageCiew.image = newImage
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    func imagePickerController(picker : UIImagePickerController!, didFinishPickingMediaWithInfo info: NSDictionary!){
        self.dismissViewControllerAnimated(true, completion: nil)
        
        let gotImage = info[UIImagePickerControllerOriginalImage] as UIImage
        
        beginImage = CIImage(image: gotImage)
        orientation = gotImage.imageOrientation
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        self.amountSliderValueChanged(amountSlider)
        
    }
    func oldPhoto(img: CIImage,withAmount intensity:Float) ->CIImage{
        let sepia = CIFilter(name: "CISepiaTone")
        sepia.setValue(img, forKey: kCIInputImageKey)
        sepia.setValue(intensity, forKey: "inputIntensity")
        
        let random = CIFilter(name: "CIRandomGenerator")
        
        let lighten = CIFilter(name: "CIColorControls")
        lighten.setValue(random.outputImage, forKey: kCIInputImageKey)
        lighten.setValue(1 - intensity, forKey: "inputBrightness")
        lighten.setValue(0, forKey: "inputSaturation")
        
        let croppedImage = lighten.outputImage.imageByCroppingToRect(beginImage.extent())
        
        let composite = CIFilter(name: "CIHardLightBlendMode")
        composite.setValue(sepia.outputImage, forKey: kCIInputImageKey)
        composite.setValue(croppedImage, forKey: kCIInputBackgroundImageKey)
        
        let vignette = CIFilter(name: "CIVignette")
        vignette.setValue(composite.outputImage, forKey: kCIInputImageKey)
        vignette.setValue(intensity * 2, forKey: "inputIntensity")
        vignette.setValue(intensity * 30, forKey: "inputRadius")
        
        return vignette.outputImage
        
    }
    func logAllFilter(){
        let properties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        print(properties)
        
        for filterName: AnyObject in properties {
            let fltr = CIFilter(name: filterName as String)
            println(fltr.attributes())
        }
    }
    
    

}

