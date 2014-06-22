//
//  TodoListManager.swift
//  swift_todolist
//
//  Created by zhaolei on 14-6-22.
//  Copyright (c) 2014 flyingzl. All rights reserved.
//

import UIKit


var ToDoListManager = _TodoListManager()

struct Task{
    
    var task:String = ""
    var desc: String = ""
}

class _TodoListManager: NSObject {
   
    
    var tasks = Task[]()
    
    
    func addTask( task: String, _ desc: String){
        
        tasks.append(Task(task: task, desc: desc))
    }
 
}
