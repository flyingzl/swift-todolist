//
//  FirstViewController.swift
//  swift_todolist
//
//  Created by zhaolei on 14-6-22.
//  Copyright (c) 2014 flyingzl. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var theTableView: UITableView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.theTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }
    
    
    override func viewDidAppear(animated: Bool) {
    
        self.theTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        
        return ToDoListManager.tasks.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        
        var  resuableCell : AnyObject! = tableView.dequeueReusableCellWithIdentifier("cell")
        
        var cell:UITableViewCell
        
        if resuableCell is UITableViewCell{
            
            cell = resuableCell as UITableViewCell
        } else {
            
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "cell")
        }
        
        var data  = ToDoListManager.tasks[indexPath.row]
        
        cell.text = data.task
        cell.detailTextLabel.text = data.desc
        
        return cell
    }
    
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!){
        
        
        if editingStyle == UITableViewCellEditingStyle.Delete{
            
            ToDoListManager.tasks.removeAtIndex(indexPath.row)
            
            self.theTableView.reloadData()
            
        }
        
        

        
    }


}

