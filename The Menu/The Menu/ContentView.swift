//
//  ContentView.swift
//  The Menu
//
//  Created by Apiphoom Chuenchompoo on 1/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    let menuItems = [MenuItem(icon: "🍔", name: "Burger", price: 8.99),
                     MenuItem(icon: "🍕", name: "Pizza", price: 12.99),
                     MenuItem(icon: "🥗", name: "Salad", price: 6.99)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
        Text("The Menu")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            VStack(alignment: .leading, spacing: 10){
                ForEach(menuItems, id: \.name){ item in
                    HStack{
                        Text(item.description)
                        Spacer()
                        Text(item.formattedPrice)
                    }
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
