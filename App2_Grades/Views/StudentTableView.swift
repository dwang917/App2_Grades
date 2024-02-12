//
//  StudentTableView.swift
//  App2_Grades
//
//  Created by Daming Wang on 2/9/24.
//

import SwiftUI

struct StudentTableView: View {
    var students: [Student]
    
    var body: some View {
        Table(students) {
            TableColumn("Student Name", value: \.name)
            TableColumn("Student ID", value: \.studentID)
            TableColumn("Student Score") {
                Text(String(format: "%.2f", $0.overAllScore))
            }
            TableColumn("Letter Grade") {
                Text($0.letterGrade.rawValue)
            }
        }
        .frame(minWidth: 300, maxWidth: .infinity, minHeight: 300, maxHeight: .infinity)
    }
}
