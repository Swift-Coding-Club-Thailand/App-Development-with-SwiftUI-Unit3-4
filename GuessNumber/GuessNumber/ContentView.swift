//
//  ContentView.swift
//  GuessNumber
//
//  Created by Apiphoom Chuenchompoo on 21/5/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter = 1
    @State private var isShowAnswer = false
    
    var body: some View {
        VStack {
            Text("\(counter)")
                .font(.system(size: 90))
                .fontWeight(.bold)
            
            HStack{
                Button(action: {
                    if(counter < 2){
                        counter+=1
                    }
                }, label: {
                    Text("+")
                        .font(.largeTitle)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 10)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
                Button(action: {
                    if(counter > 1){
                        counter-=1
                    }
                }, label: {
                    Text("-")
                        .font(.largeTitle)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 10)
                        .background(.red)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
            }
            
            Button(action: {isShowAnswer.toggle()}, label: {
                Text("Show answer")
                    .underline()
            })
        }
        .padding()
        .fullScreenCover(isPresented: $isShowAnswer, content: {
            AnswerView(userAnswer: $counter, isPresented: $isShowAnswer)
        })
    }
}

#Preview {
    ContentView()
}
