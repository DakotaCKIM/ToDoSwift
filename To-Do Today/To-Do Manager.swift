//
//  To-Do Manager.swift
//  To-Do Today
//
//  Created by Dakota Kim on 6/14/14.
//  Copyright (c) 2014 Dakota Kim. All rights reserved.
//

import UIKit

var toDoMgr: To_Do_Manager = To_Do_Manager()

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class To_Do_Manager: NSObject {
    
    var tasks = task[]()

    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
}
