//
//  ContentView.swift
//  ForEach
//
//  Created by Apiphoom Chuenchompoo on 30/5/2567 BE.
//

import SwiftUI

struct ContentView: View {
    let names = ["Alice", "Bob", "Charlie", "David"]

    var body: some View {
        VStack {
            ForEach(0..<names.count, id: \.self) { index in
                Text("\(names[index])")
            }
        }
    }
}


#Preview {
    ContentView()
}
