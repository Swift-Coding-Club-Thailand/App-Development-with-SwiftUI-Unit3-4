//
//  FoodItemModel.swift
//  Restaurant
//
//  Created by Apiphoom Chuenchompoo on 1/6/2567 BE.
//

import Foundation

protocol FoodItem {
    var name: String { get }
    var price: Double { get }
}

struct Burger: FoodItem {
    var name: String
    var price: Double
}

struct Pizza: FoodItem {
    var name: String
    var price: Double
}
