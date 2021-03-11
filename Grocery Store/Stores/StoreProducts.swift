//
//  StoreProducts.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct StoreProducts: View {

    @State private var products = Product.dummy()

    var body: some View {
        LazyVGrid(columns: [.init()]) {
            ForEach(self.products) { product in
                ProductRow(product: product)
            }
        }
    }
}

struct StoreProducts_Previews: PreviewProvider {
    static var previews: some View {
        StoreProducts()
    }
}
