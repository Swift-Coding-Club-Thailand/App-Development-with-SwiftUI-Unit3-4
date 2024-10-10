//
//  BookModel.swift
//  BookClass
//
//  Created by Apiphoom Chuenchompoo on 29/5/2567 BE.
//

import SwiftUI

class Book: Publication, ObservableObject {
    @Published var author: Author
    
    init(title: String, author: Author, publicationYear: Int) {
        self.author = author
        super.init(title: title, publicationYear: publicationYear)
    }
    
    override func getDescription() -> String {
        return "\(title) by \(author.name), published in \(publicationYear)"
    }
}
