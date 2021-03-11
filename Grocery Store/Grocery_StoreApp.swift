//
//  Grocery_StoreApp.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 07/03/21.
//

import SwiftUI

@main
struct Grocery_StoreApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CartObservable.current)
        }
    }
}
