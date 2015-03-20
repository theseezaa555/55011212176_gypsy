//
//  ViewController.swift
//  CoreData
//
//  Created by iStudents on 3/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController, UITableViewDataSource ,UITableViewDelegate{
    var items = [NSManagedObject]()
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addItem(sender: AnyObject) {
       var alert = UIAlertController(title: "New Item", message: "Add a new Item", preferredStyle: .Alert)
        let saveAction = UIAlertAction(title: "Save", style: .Default) { (action: UIAlertAction!) -> Void in
            
            let textField = alert.textFields![0] as UITextField
            self.saveName(textField.text)
            self.tableView.reloadData()
            
            
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel",style:.Default) { (action: UIAlertAction!) -> Void in
        
        }
        
        alert.addTextFieldWithConfigurationHandler { (textField:UITextField!) -> Void in
        
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    func saveName(name: String){
        
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        let entity = NSEntityDescription.entityForName("Item", inManagedObjectContext: managedContext)
        
        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        item.setValue(name, forKey: "name")
        
        var error: NSError?
        if !managedContext.save(&error){
            println("Could not save \(error), \(error?.userInfo)")
        }
        items.append(item)
    }
    func delName(name: String){
        
        
        
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        let fetchRequest = NSFetchRequest(entityName: "Item")
        
        var error: NSError?
        
        let fetchedResults = managedContext.executeFetchRequest(fetchRequest, error: &error) as [NSManagedObject]?
        
        if let results = fetchedResults {
            items = results
        }else {
            println("Could not fetch \(error), \(error!.userInfo)")
        }
    }
   
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext!
        
        if editingStyle == UITableViewCellEditingStyle.Delete{
           
            items.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            
            let appDel:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
            let context:NSManagedObjectContext = appDel.managedObjectContext!
            context.deleteObject(items[indexPath.row] as NSManagedObject)
            items.removeAtIndex(indexPath.row)
            context.save(nil)
            
            self.tableView.deleteRowsAtIndexPaths([indexPath.row], withRowAnimation: .Fade)
            
         return

            
        
        }
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        
            
        
           // let appDel:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
            //let context:NSManagedObjectContext = appDel.managedObjectContext!
            //context.deleteObject(items[indexPath.row] as NSManagedObject)
            //items.removeAtIndex(indexPath.row)
            //context.save(nil)
            
            //self.tableView.deleteRowsAtIndexPaths([indexPath.row], withRowAnimation: .Fade)
       
       //     return
        
        
        
        //let message = items[indexPath.row]
        
        //let appDel:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        //let context:NSManagedObjectContext = appDel.managedObjectContext!
        //context.deleteObject(items[indexPath.row] as NSManagedObject)
        //items.removeAtIndex(indexPath.row)
       
        //var ms = message.valueForKey("name")
        
        //let alert = UIAlertController(title: "Your select", message: "\(ms)", preferredStyle: .Alert)
        //let okButton = UIAlertAction(title: "ok", style: .Default, handler: nil)
        //alert.addAction(okButton)
        //self.presentViewController(alert, animated: true, completion: nil)
        //self.tableView.deleteRowsAtIndexPaths([indexPath.row], withRowAnimation: .Fade)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Shopping List\""
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        let item = items[indexPath.row]
        cell.textLabel!.text = item.valueForKey("name") as String?
        return cell
    }
    


}

