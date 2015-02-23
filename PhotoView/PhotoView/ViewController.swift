//
//  ViewController.swift
//  PhotoView
//
//  Created by admin on 2/5/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    //initializations definitions for save texts
    //@IBOutlet weak var UITextField:field1!
    
    //@IBOutlet weak var UILabel:loaded!
    
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var animationBtn: UIButton!
    
    
    @IBAction func saveBtnClick(sender: AnyObject) {
        
    }
    var imageList=[UIImage]()
    
    @IBAction func animationBtnClicked(sender: AnyObject) {
        startAnimation()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for i in 1...3
        {
            let ImageName="Im"+"\(i)"+".jpg"
            imageList+=[UIImage(named: ImageName)!]

        
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func startAnimation() -> Void
    {
        if !myImageView.isAnimating() {
            myImageView.animationImages=imageList
            myImageView.animationDuration=3
            myImageView.startAnimating()

        } else
        {
            myImageView.stopAnimating()
            myImageView.image = UIImage(named: "1.jpg")
        }
    }
    func GetListOfImages() -> Void
    {
        let filemanager:NSFileManager=NSFileManager()
        let files=filemanager.enumeratorAtPath((NSHomeDirectory()))
        var i:Int
        i=1
        while let filename = files?.nextObject()
        {
            if filename.lowercaseString.rangeOfString("jpg") != nil
            {
                println(i)
                println(filename)
                i++
            }
        }
    }
}

