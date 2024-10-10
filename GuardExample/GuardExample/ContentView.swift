//
//  ContentView.swift
//  GuardExample
//
//  Created by Apiphoom Chuenchompoo on 1/6/2567 BE.
//

import SwiftUI

enum MessageStatus: String {
    case valid, invalid, unknown
}

struct ContentView: View {
    @State private var validationMessage: MessageStatus = .unknown
    
    var body: some View {
        VStack {
            Button(action: {
                validateInput("asd")
            }) {
                Text("Validate Hardcoded Input")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            Text(validationMessage != .unknown ? validationMessage.rawValue : "")
                    .foregroundColor(validationMessage == .valid ? .green : .red)
        }
        .padding()
    }
    
    private func validateInput(_ input: String) {
        guard let _ = Double(input) else {
            validationMessage = .invalid
            return
        }
        
        validationMessage = .valid
    }
}

#Preview {
    ContentView()
}
