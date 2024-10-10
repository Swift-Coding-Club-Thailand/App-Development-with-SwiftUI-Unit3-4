//
//  PizzaViewModel.swift
//  Pizza Shop
//
//  Created by Apiphoom Chuenchompoo on 2/6/2567 BE.
//

import Foundation

class PizzaViewModel: ObservableObject {
    @Published var selectedTopping = ""
    @Published var message = ""
    
    func selectTopping() throws {
        switch selectedTopping {
        case "Cheese":
            throw PizzaError.noCheese
        case "Pineapple":
            throw PizzaError.noPineapple
        case "Pepperoni", "Veggie":
            break
        default:
            throw PizzaError.invalidTopping
        }
    }
    
    func checkPizza(){
        do {
            try selectTopping()
            message = "You ordered a \(selectedTopping) pizza!"
        } catch PizzaError.noCheese {
            message = "Sorry, we're out of cheese pizza"
        } catch PizzaError.noPineapple {
            message = "Sorry, we're out of pineapple pizza"
        } catch PizzaError.invalidTopping {
            message = "Sorry, we don't have that topping"
        } catch{
            message = "Unexpected error: \(error)"
        }
    }
}
