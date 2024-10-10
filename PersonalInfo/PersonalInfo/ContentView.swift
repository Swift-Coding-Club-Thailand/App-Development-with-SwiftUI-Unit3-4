//
//  ContentView.swift
//  PersonalInfo
//
//  Created by Apiphoom Chuenchompoo on 31/5/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var person: Person?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            if let person = person {
                PersonInfoView(person: person)
            } else {
                Text("No person data available")
                    .foregroundColor(.secondary)
            }
            
            Button(action: loadPerson) {
                Text("Load Person")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .frame(maxWidth: .infinity)
        }
        .padding()
    }
    
    func loadPerson() {
        let address = Address(street: "123 Main St", city: "Cupertino", zipCode: nil)
        let person = Person(name: "John", age: -1, address: address)
        self.person = person
    }
}

#Preview {
    ContentView()
}
