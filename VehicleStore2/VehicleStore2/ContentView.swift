//
//  ContentView.swift
//  VehicleStore2
//
//  Created by Apiphoom Chuenchompoo on 6/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var vehicles = ["Super Cool Car", "Super Cool Bike", "BIG Truck", "Swift Scooter", "Cool Cool Van"]
    
    var body: some View {
        VStack {
            Text("Vehicle Store")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            VStack(alignment: .leading, spacing: 10) {
                ForEach(vehicles, id: \.self) { vehicle in
                    Text(vehicle)
                        .font(.headline)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                }
            }
            .padding()
            
            HStack {
                Button(action: {
                    appendVehicle()
                }) {
                    Text("Append")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(vehicles.count < 5 ? Color.blue : Color.gray)
                        .cornerRadius(8)
                }
                .padding(.horizontal)
                .disabled(vehicles.count >= 5)
                
                Button(action: {
                    removeLastVehicle()
                }) {
                    Text("Remove Last")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(vehicles.isEmpty ? Color.gray : Color.red)
                        .cornerRadius(8)
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
    
    private func appendVehicle() {
        if vehicles.count < 5 {
            let newVehicle = "New Vehicle \(vehicles.count + 1)"
            vehicles.append(newVehicle)
        }
    }
    
    private func removeLastVehicle() {
        if !vehicles.isEmpty {
            vehicles.removeLast()
        }
    }
}

#Preview{
    ContentView()
}
