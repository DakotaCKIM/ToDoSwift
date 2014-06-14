//
//  SecondViewController.swift
//  To-Do Today
//
//  Created by Dakota Kim on 6/14/14.
//  Copyright (c) 2014 Dakota Kim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var textTask: UITextField!
    @IBOutlet var textDesc: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Events
    @IBAction func buttonAddTask_Click(sender: UIButton){
        toDoMgr.addTask(textTask.text, desc: textDesc.text)
        self.view.endEditing(true)
        textDesc.text = ""
        textTask.text = ""
        self.tabBarController.selectedIndex = 0;
        
    }
    
    // Ends touch function without RETURN
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!)
    {
        self.view.endEditing(true)
    }

    // UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool
    {
        textField.resignFirstResponder();
        return true
    }
}

