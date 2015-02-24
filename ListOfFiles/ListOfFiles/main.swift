//
//  main.swift
//  ListOfFiles
//
//  Created by admin on 2/9/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import Foundation

println("Hello, World!")

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