//
//  ContentView.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 07/03/21.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var cartObservable: CartObservable

    var body: some View {
        TabView(selection: $cartObservable.selectedTab) {
            Explore()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }
                .tag(1)

            Orders()
                .tabItem {
                    Image(systemName: "doc.text.magnifyingglass")
                    Text("Orders")
                }
                .tag(2)

            Cart()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
                .tag(3)

            Profile()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(4)
        }
        .accentColor(.main)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
