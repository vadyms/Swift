//
//  ViewController.swift
//  SQLiteSolution_01
//
//  Created by admin on 2/24/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet var txtUsername: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    @IBAction func btnSave() {
        //println("Save")
        var appDel:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        var context:NSManagedObjectContext=appDel.managedObjectContext!
        var newUser=NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context) as NSManagedObject
        newUser.setValue(""+txtUsername.text, forKey: "username")
        newUser.setValue(""+txtPassword.text, forKey: "password")
        
        context.save(nil)
        println(newUser)
        println("Object Saved.")
    }

    @IBAction func btnLoad() {
        //println("Load")
        var appDel:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        var context:NSManagedObjectContext=appDel.managedObjectContext!
        
        var request = NSFetchRequest(entityName: "Users")
        request.returnsObjectsAsFaults = false
        request.predicate = NSPredicate(format: "username = %@", "" + txtUsername.text)
        
        var results:NSArray = context.executeFetchRequest(request, error: nil)!
        
        if (results.count > 0) {
            var res = results[0] as NSManagedObject
            txtUsername.text = res.valueForKey("username") as String
            txtPassword.text = res.valueForKey("password") as String
            //for res in results {
            //    println(res)
            //}
        } else {
            println("0 results returned/// potential Error")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class StudentInfo: NSObject {
    var studentID: Int = Int()
    var studentRollNo: String = String()
    var studentName: String = String()
}