//
//  ViewController.swift
//  ToDoList
//
//  Created by 山中建人 on 2018/03/13.
//  Copyright © 2018 Kento. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate , UITableViewDataSource{


    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self  //おかしい
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)->Int {
        if let todo = todoList{
            return todo.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        if let todo = todoList{
            cell.textLabel?.text = todo[indexPath.row]
        }
        return cell;
        
    }
    
    
    func tableView(_ tableView: UITableView,commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            todoList?.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }

}

