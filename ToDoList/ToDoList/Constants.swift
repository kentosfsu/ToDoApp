//
//  Constants.swift
//  ToDoList
//
//  Created by 山中建人 on 2018/03/13.
//  Copyright © 2018 Kento. All rights reserved.
//

import Foundation

var todoList:[String]?

func saveData(todoList:[String]){
    UserDefaults.standard.set(todoList,forKey: "todoList")
}

func fetchData() -> [String]? {
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [String]{
        return todo
    }
    else {
        return nil
    }
}
