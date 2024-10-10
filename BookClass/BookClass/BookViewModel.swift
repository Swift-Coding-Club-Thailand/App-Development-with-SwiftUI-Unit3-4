//
//  BookViewModel.swift
//  BookClass
//
//  Created by Apiphoom Chuenchompoo on 29/5/2567 BE.
//

import SwiftUI

class BookViewModel: ObservableObject {
    @Published var book: Book

    init() {
        let author = Author(name: "Harper Lee", birthYear: 1926)
        self.book = Book(title: "To Kill a Mockingbird", author: author, publicationYear: 1960)
    }
    
    func updateBook(title: String, publicationYear: Int) {
        let updatedAuthor = Author(name: book.author.name, birthYear: book.author.birthYear)
        self.book = Book(title: title, author: updatedAuthor, publicationYear: publicationYear)
    }
}
