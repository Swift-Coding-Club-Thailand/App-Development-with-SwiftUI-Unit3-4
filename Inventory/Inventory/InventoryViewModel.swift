//
//  InventoryViewModel.swift
//  Inventory
//
//  Created by Apiphoom Chuenchompoo on 31/5/2567 BE.
//

import Foundation

class InventoryViewModel: ObservableObject {
    @Published var items: [Any] = []
    
    init(){
        generateRandomItems()
    }
    
    func generateRandomItems(){
        items.removeAll()
        
        for _ in 1...5{
            let randomNumber = Int.random(in: 1...3)
            
            switch randomNumber {
            case 1:
                items.append(Book(name: "Book \(randomNumber)"))
            case 2:
                items.append(Movie(name: "Movie \(randomNumber)"))
            case 3:
                items.append(Game(name: "Game \(randomNumber)"))
            default:
                break
            }
        }
    }
}
