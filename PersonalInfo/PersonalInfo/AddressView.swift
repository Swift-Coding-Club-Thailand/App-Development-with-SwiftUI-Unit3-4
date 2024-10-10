//
//  AddressView.swift
//  PersonalInfo
//
//  Created by Apiphoom Chuenchompoo on 31/5/2567 BE.
//

import SwiftUI

struct AddressView: View {
    let address: Address
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Address:")
                .font(.headline)
            
            Text("\(address.street)")
            Text("\(address.city)")
            
            if let zipCode = address.zipCode {
                Text("ZIP Code: \(zipCode)")
            } else {
                Text("ZIP Code: N/A")
                    .foregroundColor(.secondary)
            }
        }
    }
}

#Preview {
    AddressView(address: Address(street: "A", city: "B", zipCode: "C"))
}
