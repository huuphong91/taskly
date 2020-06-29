//
//  Task.swift
//  Taskly
//
//  Created by Phong Toan Huu on 6/28/20.
//  Copyright © 2020 Phong Toan Huu. All rights reserved.
//

import Foundation

class Task: NSObject, NSCoding {
    var name : String?
    var isDone : Bool?
    
    private let nameKey = "name"
    private let isDoneKey = "isDone"
    
    init(name : String, isDone : Bool = false) {
        self.name = name
        self.isDone = isDone
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: nameKey)
        aCoder.encode(isDone, forKey: isDoneKey)
    }
    
    required init?(coder aDeCoder: NSCoder) {
        
        guard let name = aDeCoder.decodeObject(forKey: nameKey) as? String,
            let isDone = aDeCoder.decodeObject(forKey: isDoneKey) as? Bool
        else {
            return
        }
        
        self.name = name
        self.isDone = isDone
    }
}
