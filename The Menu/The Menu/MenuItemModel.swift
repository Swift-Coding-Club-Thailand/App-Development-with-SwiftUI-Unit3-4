//
//  MenuItemModel.swift
//  The Menu
//
//  Created by Apiphoom Chuenchompoo on 1/6/2567 BE.
//

import Foundation

struct MenuItem {
    let icon: String
    let name: String
    let price: Double
}

extension MenuItem {
    var formattedPrice: String {
        return "$\(price)"
    }
    
    var description: String {
        return "\(icon) - \(name)"
    }
}
