//
//  Item.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct Item: Codable, Identifiable {
    var id: Int
    var name: String
    var quantity: Int
    var price: Int
}

extension Item {
    static public func dummy() -> [Item] {
        return [
            Item(id: 1, name: "Tomato", quantity: 2, price: 22),
            Item(id: 2, name: "Spinach", quantity: 1, price: 35),
            Item(id: 3, name: "Milk", quantity: 4, price: 115),
            Item(id: 4, name: "Curd", quantity: 4, price: 207)
        ]
    }
}
