//
//  PersonModel.swift
//  PersonalInfo
//
//  Created by Apiphoom Chuenchompoo on 31/5/2567 BE.
//

import Foundation

struct Person {
    var name: String
    var age: Int
    var address: Address?
    
    init?(name: String, age: Int, address: Address?) {
        if age < 0 {
            return nil
        }
        self.name = name
        self.age = age
        self.address = address
    }
}

struct Address {
    var street: String
    var city: String
    var zipCode: String?
}
