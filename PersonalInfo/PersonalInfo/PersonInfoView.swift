//
//  PersonInfoView.swift
//  PersonalInfo
//
//  Created by Apiphoom Chuenchompoo on 31/5/2567 BE.
//

import SwiftUI

struct PersonInfoView: View {
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Name: \(person.name)")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Age: \(person.age)")
                .foregroundColor(.secondary)
            
            if let address = person.address {
                AddressView(address: address)
            } else {
                Text("Address: N/A")
                    .foregroundColor(.secondary)
            }
        }
    }
}

#Preview {
    PersonInfoView(person: Person(name: "A", age: 0, address: Address(street: "A", city: "B"))!)
}
