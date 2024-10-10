//
//  AuthorModel.swift
//  BookClass
//
//  Created by Apiphoom Chuenchompoo on 29/5/2567 BE.
//

import SwiftUI

class Author: ObservableObject {
    @Published var name: String
    @Published var birthYear: Int
    
    init(name: String, birthYear: Int) {
        self.name = name
        self.birthYear = birthYear
    }
}
