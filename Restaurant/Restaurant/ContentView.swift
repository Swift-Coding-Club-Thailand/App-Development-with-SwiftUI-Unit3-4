//
//  ContentView.swift
//  Restaurant
//
//  Created by Apiphoom Chuenchompoo on 1/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var foodItems: [FoodItem] = [
        Burger(name: "Cheeseburger", price: 8.99),
        Burger(name: "BBQ Nurger", price: 9.99),
        Pizza(name: "Pepperoni", price: 14.99)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Text("Restaurant")
                .font(.largeTitle)
                .fontWeight(.bold)
            VStack(alignment: .leading, spacing: 10){
                ForEach(foodItems, id: \.name){ item in
                    HStack{
                        Text(item.name)
                        Spacer()
                        Text("$\(item.price, specifier: "%.2f")")
                    }
                }
            }
            Button(action: {
                let newPizza = Pizza(name: "Hawaiian", price: 15.99)
                foodItems.append(newPizza)
            }, label: {
                Text("Add Pizza")
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
