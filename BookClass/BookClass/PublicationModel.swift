//
//  PublicationModel.swift
//  BookClass
//
//  Created by Apiphoom Chuenchompoo on 2/6/2567 BE.
//

import Foundation

class Publication {
    var title: String
    var publicationYear: Int
    
    init(title: String, publicationYear: Int) {
        self.title = title
        self.publicationYear = publicationYear
    }
    
    func getDescription() -> String {
        return "\(title), published in \(publicationYear)"
    }
}
