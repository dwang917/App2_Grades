//
//  Student.swift
//  App2_Grades
//
//  Created by Daming Wang on 2/9/24.
//

import Foundation

class Student: Identifiable {
    let id = Student.ID()
    
    let studentID: String = ""
    
    var name: String
    
    var overAllScore = 0.0
    
    var letterGrade: LetterGrade {
        get {
            letterGrade(withScore: overAllScore)
        }
    }
    
    init(name: String, studentID: String) {
        self.name = name
        self.studentID = studentID
    }
    
    convenience init(name: String, studentID: String, overAllScore: Double) {
        self.init(name: name, studentID: studentID)
        
        self.overAllScore = overAllScore
    }
    
    struct ID: Identifiable, Hashable {
        var id = UUID()
    }
    
    
}
