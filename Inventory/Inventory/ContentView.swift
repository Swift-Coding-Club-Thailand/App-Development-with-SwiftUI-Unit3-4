//
//  ContentView.swift
//  Inventory
//
//  Created by Apiphoom Chuenchompoo on 31/5/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = InventoryViewModel()
    
    var body: some View {
        VStack {
            Text("Inventory")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            VStack(spacing: 15){
                ForEach(viewModel.items.indices, id: \.self) { index in
                    if let book = viewModel.items[index] as? Book {
                        itemView(icon: book.icon, name: book.name)
                    } else if let movie = viewModel.items[index] as? Movie {
                        itemView(icon: movie.icon, name: movie.name)
                    } else if let game = viewModel.items[index] as? Game {
                        itemView(icon: game.icon, name: game.name)
                    }
                }
            }
        }
        .padding()
        
        
        Button(action: {
            viewModel.generateRandomItems()
        }, label: {
            Text("Refresh")
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        })
    }
    
    func itemView(icon: String, name: String) -> some View {
        HStack{
            Text(icon)
                .font(.system(size: 50))
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
            Spacer()
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    ContentView()
}
