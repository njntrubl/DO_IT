//
//  CreateTaskViewController.swift
//  DO-IT
//
//  Created by njntrubl on 1/13/18.
//  Copyright © 2018 njntrublJoe Momma. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
    let task = Task()
    
    task.name = taskNameTextField.text!
    task.important = importantSwitch.isOn
    previousVC.tasks.append(task)
    previousVC.tableView.reloadData()
    navigationController!.popViewController(animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
