//
//  CartObservable.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

class CartObservable: ObservableObject {
    public static var current = CartObservable()

    @Published var selectedTab = 1
    @Published var items: [Item] = [
        Item(id: Product.dummy()[0].id, name: Product.dummy()[0].name, quantity: 1, price: Product.dummy()[0].price)
    ]
    var subtotal: Int {
        get {
            self.items.map({ $0.price }).reduce(0, { $0 + $1 })
        }
    }
    var tax: Int {
        get {
            10
        }
    }
    var total: Int {
        get {
            self.subtotal + self.tax
        }
    }

    public func addProduct (_ product: Product) {
        if let exists = self.items.first(where: { $0.id == product.id }) {
            self.items.removeAll(where: { $0.id == product.id })
            self.items.append(Item(id: product.id, name: product.name, quantity: (exists.quantity + 1), price: (exists.quantity * product.price)))
        } else {
            self.items.append(Item(id: product.id, name: product.name, quantity: 1, price: product.price))
        }
    }

    public func removeProduct (_ item: Item) {
        self.items.removeAll(where: { $0.id == item.id })
    }

    public func resetProducts () {
        self.items = []
    }

    public func changeTab (_ tabIndex: Int) {
        self.selectedTab = tabIndex
    }
}
