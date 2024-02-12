//
//  AssignmentGroup.swift
//  App2_Grades
//
//  Created by Daming Wang on 2/9/24.
//

import Foundation

class AssignmentGroup {
    let id = AssignmentGroup.ID()
    
    var name: String
    
    var weight: Double
    
    var assignments: [Assignment.ID : Assignment] = [:]
    
    init(name: String, weight: Double) {
        self.name = name
        self.weight = weight
    }
    
    struct ID: Identifiable, Hashable {
        var id = UUID()
    }
}
