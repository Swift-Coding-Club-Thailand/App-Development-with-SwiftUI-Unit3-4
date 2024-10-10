//
//  TaskModel.swift
//  TodoList
//
//  Created by Apiphoom Chuenchompoo on 30/5/2567 BE.
//

import Foundation

enum TaskStatus: String {
    case todo, inProgress, done
}

struct Task {
    let title: String
    let status: TaskStatus
}
