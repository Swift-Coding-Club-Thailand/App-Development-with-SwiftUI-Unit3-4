//
//  BookModel.swift
//  BookStore
//
//  Created by Apiphoom Chuenchompoo on 29/5/2567 BE.
//

import Foundation

struct Book {
    var title: String
    var author: String
    var price: Double
    
    func description() -> String{
        return "\(title) by \(author)"
    }
    
    mutating func discount(_ percentage: Double){
        price -= price * (percentage/100)
    }
}
