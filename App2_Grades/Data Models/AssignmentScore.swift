//
//  AssignmentScore.swift
//  App2_Grades
//
//  Created by Daming Wang on 2/9/24.
//

import Foundation

class AssignmentScore {
    let id = AssignmentScore.ID()
    
    let studentID: Student.ID
    
    let assignmentID: UUID
    
    var score: Double
    
    init(studentID: Student.ID, assignmentID: UUID, score: Double) {
        self.studentID = studentID
        self.assignmentID = assignmentID
        self.score = score
    }
    
    struct ID: Identifiable, Hashable {
        var id = UUID()
    }
    
    
}
