//
//  ContentView.swift
//  BookStore
//
//  Created by Apiphoom Chuenchompoo on 29/5/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var book1 = Book(title: "Swift 1", author: "Api", price: 10.23)
    @State private var book2 = Book(title: "Swift so fun", author: "Kunsue", price: 17.23)
    
    var body: some View {
        VStack {
            Text("Book Store 📕")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            VStack{
                BookView(book: $book1)
                BookView(book: $book2)
            }
            
            Text("Total Value: $\(book1.price + book2.price , specifier: "%.2f")")
                .font(.title3)
                .fontWeight(.semibold)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
