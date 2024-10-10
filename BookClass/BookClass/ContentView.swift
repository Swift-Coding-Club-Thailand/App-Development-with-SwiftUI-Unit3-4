//
//  ContentView.swift
//  BookClass
//
//  Created by Apiphoom Chuenchompoo on 29/5/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = BookViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(viewModel.book.getDescription())
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .padding(.bottom)
            
            HStack {
                Text("Author:")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Text(viewModel.book.author.name)
                    .font(.headline)
                    .foregroundColor(.secondary)
            }
            
            HStack {
                Text("Author's birth year:")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text(String(viewModel.book.author.birthYear))
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Button(action: {
                viewModel.updateBook(title: "Go Set a Watchman", publicationYear: 2015)
            }) {
                Text("Update Book")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(Color(.systemBackground))
    }
}
#Preview {
    ContentView()
}
