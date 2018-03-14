//
//  AddController.swift
//  ToDoList
//
//  Created by 山中建人 on 2018/03/13.
//  Copyright © 2018 Kento. All rights reserved.
//

import UIKit

class AddController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func AddPush(_ sender: UIButton) {
        
        if  (textField.text != nil) && textField.text != ""{
            todoList?.append(textField.text!)
            textField.text = ""
            textField.placeholder = "Add more?"
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
