//
//  ContentView.swift
//  TheBox
//
//  Created by Apiphoom Chuenchompoo on 2/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    let items: [Any] = ["hello", 42, 3.14, "SwiftUI", true]
    
    var body: some View {
        VStack {
          Text("Generic Items")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            ForEach(items.indices, id:\.self) { index in
                ItemView(item: Item(id: index + 1, data: items[index]))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
