//
//  FirstViewController.swift
//  To-Do Today
//
//  Created by Dakota Kim on 6/14/14.
//  Copyright (c) 2014 Dakota Kim. All rights reserved.
//

import UIKit



class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var tblTasks: UITableView!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Return to To-Do List
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData();
    }
    
    // Delete from Table of Tasks
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            toDoMgr.tasks.removeAtIndex(indexPath.row)
            tblTasks.reloadData();
        }
    }

    // UITableViewDataSource
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return toDoMgr.tasks.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle , reuseIdentifier: "Default")
        
        cell.text = toDoMgr.tasks[indexPath.row].name
        
        cell.detailTextLabel.text = toDoMgr.tasks[indexPath.row].desc
        
        return cell
        
    }

}

