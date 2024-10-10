//
//  ContentView.swift
//  Pizza Shop
//
//  Created by Apiphoom Chuenchompoo on 2/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = PizzaViewModel()
    
    var body: some View {
        VStack {
          Text("🍕 Pizza Order")
                .font(.title)
                .fontWeight(.bold)
            
            Text(viewModel.message)
                .font(.title3)
                .fontWeight(.semibold)
            
            Button(action: {
                viewModel.selectedTopping = "Cheese"
                viewModel.checkPizza()
            }, label: {
                Text("select cheese")
                    .font(.headline)
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            })
            
            Button(action: {
                viewModel.selectedTopping = "Pineapple"
                viewModel.checkPizza()
            }, label: {
                Text("select pineapple")
                    .font(.headline)
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            })
            
            
            Button(action: {
                viewModel.selectedTopping = "Veggie"
                viewModel.checkPizza()
            }, label: {
                Text("select veggie")
                    .font(.headline)
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
