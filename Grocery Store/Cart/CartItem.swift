//
//  CartItem.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 07/03/21.
//

import SwiftUI

struct CartItem: View {

    var item: Item

    var body: some View {
        Stepper(
            onIncrement: {},
            onDecrement: {},
            label: {
                HStack {
                    Image(systemName: "lasso.sparkles")
                        .padding()
                    VStack(alignment: .leading) {
                        Text(item.name)
                        Text("Shelf 1")
                            .foregroundColor(.gray)
                            .font(.caption2)
                    }
                    Spacer()
                    Text("$\(item.price)")
                        .foregroundColor(.main)
                        .fontWeight(.bold)
                    Spacer()
                }
            })
    }
}

struct CartItem_Previews: PreviewProvider {
    static var previews: some View {
        CartItem(item: Item.dummy()[0])
    }
}
