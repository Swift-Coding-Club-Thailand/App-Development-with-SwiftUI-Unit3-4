//
//  BookView.swift
//  BookStore
//
//  Created by Apiphoom Chuenchompoo on 29/5/2567 BE.
//

import SwiftUI

struct BookView: View {
    @Binding var book: Book
    
    var body: some View {
        VStack(alignment: .leading){
            Text(book.description())
                .font(.title3)
                .fontWeight(.bold)
                .lineLimit(2)
            Text("$ \(book.price , specifier: "%.2f")")
                .fontWeight(.semibold)
            Button(action: {book.discount(10)}, label: {
                Text("Apply Discount")
                    .padding(8)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
            })
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    BookView(book: .constant(Book(title: "Swift Programming", author: "Api", price: 29.99)))
}
