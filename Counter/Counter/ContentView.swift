//
//  ContentView.swift
//  Counter
//
//  Created by Apiphoom Chuenchompoo on 19/7/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                Text("\(counter)")
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                HStack(spacing: 30){
                    Button("+"){
                        counter+=1
                    }
                    .padding()
                    .background(.blue)
                    .cornerRadius(15)
                    Button("-"){
                        counter-=1
                    }
                    .padding()
                    .background(.red)
                    .cornerRadius(15)
                }  .foregroundStyle(.white)
                
            }
        }
    }
}



#Preview {
    ContentView()
}
