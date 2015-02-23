//
//  ViewController.swift
//  iCalc
//
//  Created by admin on 2/20/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber = Int()
    var secondNumber = Int()
    var isTypingNumber = false
    var result = Int()
    var operation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clear(sender: AnyObject) {
        firstNumber=0
        secondNumber=0
        isTypingNumber = false
        result = 0
        Screen.text="0"
    }
    @IBAction func equals(sender: AnyObject) {
        secondNumber = Screen.text!.toInt()!
        if operation == "+" {
            result = firstNumber+secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        } else if operation == "x" {
            result = firstNumber * secondNumber
        } else if operation == "/" {
            result = firstNumber / secondNumber
        } else {
            println("Error: Unknown operation!")
        }
        Screen.text = "\(result)"
    }
    @IBAction func operation(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Screen.text!.toInt()!
        operation = sender.currentTitle!!
    }

    @IBOutlet weak var Screen: UILabel!
    
    @IBAction func number(sender: AnyObject) {

        var number=sender.currentTitle
        if isTypingNumber == true {
            Screen.text=Screen.text! + number!!
        } else {
            Screen.text = number
        }
        isTypingNumber = true
    }
}

