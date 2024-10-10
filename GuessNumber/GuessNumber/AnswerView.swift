//
//  AnswerView.swift
//  GuessNumber
//
//  Created by Apiphoom Chuenchompoo on 21/5/2567 BE.
//

import SwiftUI

struct AnswerView: View {
    
    @State private var randomNumber = Int.random(in: 1...2)
    @Binding var userAnswer:Int
    @Binding var isPresented:Bool
    
    var body: some View {
        VStack{
            Text("Answer is ...")
                .font(.system(size: 25))
                .fontWeight(.bold)
            Text("\(randomNumber)")
                .font(.system(size: 80))
                .fontWeight(.bold)
            Text(userAnswer == randomNumber ? "You correct!" : "You wrong!" )
                .font(.largeTitle)
                .bold()
            Spacer()
                .frame(maxHeight: 20)
            Text("Your answer : \(userAnswer)")
                .fontWeight(.medium)
            Button(action: {isPresented.toggle()}, label: {
                Text("Back to guess view")
                    .underline()
            })
        }
    }
}

#Preview {
    AnswerView(userAnswer: .constant(1), isPresented: .constant(true))
}
