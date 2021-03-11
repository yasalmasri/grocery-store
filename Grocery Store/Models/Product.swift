//
//  Product.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct Product: Codable, Identifiable {
    var id: Int
    var name: String
    var quantity: Int
    var price: Int
    var image: String
    var available: Bool = true
}

extension Product {
    static public func dummy () -> [Product] {
        return [
            Product(id: 1, name: "Potato", quantity: 500, price: 35, image: "Potato", available: true),
            Product(id: 2, name: "Tomato", quantity: 500, price: 40, image: "Tomato", available: true),
            Product(id: 3, name: "Onion", quantity: 250, price: 22, image: "Onion", available: false),
            Product(id: 4, name: "Spinach", quantity: 500, price: 45, image: "Spinach", available: true)
        ]
    }
}
