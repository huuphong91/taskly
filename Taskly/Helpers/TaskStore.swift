//
//  TaskStore.swift
//  Taskly
//
//  Created by Phong Toan Huu on 6/28/20.
//  Copyright © 2020 Phong Toan Huu. All rights reserved.
//

import Foundation

class TaskStore {
    
    var tasks = [[Task](), [Task]()]
    
    // add tasks
    func add(_ task: Task, at index: Int, isDone: Bool = false) {
        let section = isDone ? 1 : 0
        
        tasks[section].insert(task, at: index)
    }
    
    // remove tasks
    func remove(at index: Int, isDone: Bool = false) -> Task {
        let section = isDone ? 1 : 0
        
        return tasks[section].remove(at: index)
    }
}
