//
//  Category.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct Store: Codable, Identifiable {
    var id: UUID
    var name: String
    var location: String
    var distance: Int
    var image: String
    var delivery: String
    var desc: String = "Market Square Mall, 3rd and 4th Floor, Bellandur, Bangalore"
}

extension Store {
    static public func dummy () -> [Store] {
        return [
            Store(id: UUID(), name: "Simpli Namdhari’s", location: "Sarjapur", distance: 2, image: "SimpliStore", delivery: "1 Hour Delivery"),
            Store(id: UUID(), name: "More Mega Store", location: "Bellandur", distance: 3, image: "MoreMegaStore", delivery: "2 Hour Delivery"),
            Store(id: UUID(), name: "Village Hypermarket", location: "HSR Layout", distance: 5, image: "VillageStore", delivery: "2 Hour Delivery"),
            Store(id: UUID(), name: "Simpli Namdhari’s", location: "Sarjapur", distance: 2, image: "SimpliStore", delivery: "1 Hour Delivery"),
            Store(id: UUID(), name: "More Mega Store", location: "Bellandur", distance: 3, image: "MoreMegaStore", delivery: "2 Hour Delivery"),
            Store(id: UUID(), name: "Village Hypermarket", location: "HSR Layout", distance: 5, image: "VillageStore", delivery: "2 Hour Delivery")
        ]
    }
}
