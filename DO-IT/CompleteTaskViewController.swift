//
//  CompleteTaskViewController.swift
//  DO-IT
//
//  Created by njntrubl on 1/13/18.
//  Copyright © 2018 njntrublJoe Momma. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task : Task? = nil
    
    @IBOutlet weak var taskLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //taskLabel.text = task.name
        
        if task!.important {
            taskLabel.text = "❗️ \(task!.name!)"
        } else {
            taskLabel.text = task!.name!
        }
        
    }

    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()

        navigationController!.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
