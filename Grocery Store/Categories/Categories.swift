//
//  Categories.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct Categories: View {

    @State private var stores = Store.dummy()

    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: [.init()]) {
                ForEach(self.stores) { store in
                    StoreCard(store: store)
                }
            }
            .padding()
        }
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
    }
}
