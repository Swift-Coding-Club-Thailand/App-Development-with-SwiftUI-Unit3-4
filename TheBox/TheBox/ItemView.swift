//
//  ItemView.swift
//  TheBox
//
//  Created by Apiphoom Chuenchompoo on 2/6/2567 BE.
//

import SwiftUI

struct ItemView<T>: View {
    let item: Item<T>
    
    var body: some View {
        VStack{
            Text("Items \(item.id)")
                .fontWeight(.semibold)
                .font(.title2)
            
            if let data = item.data as? String {
                Text(data)
            } else if let data = item.data as? Int {
                Text("\(data)")
            } else if let data = item.data as? Double {
                Text("\(data)")
            }else{
                Text("Hmm........ What is it?")
            }
        }
    }
}

#Preview {
    ItemView(item: Item(id: 0, data: false))
}
