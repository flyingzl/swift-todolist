//
//  SecondViewController.swift
//  swift_todolist
//
//  Created by zhaolei on 14-6-22.
//  Copyright (c) 2014 flyingzl. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
                            
    @IBOutlet var taskField: UITextField
    
    
    @IBOutlet var descField: UITextField
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
    
       self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
    
    
    

    @IBAction func addTask(sender: AnyObject) {
        
        ToDoListManager.addTask(taskField.text, descField.text)
        
        self.view.endEditing(true)
        
//        self.descField.resignFirstResponder()
        
        self.taskField.text = ""
        self.descField.text = ""
        
        self.tabBarController.selectedIndex = 0
        
        
    }
    
    


}

