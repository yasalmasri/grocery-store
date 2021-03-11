//
//  ProductRow.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct ProductRow: View {

    @EnvironmentObject var cartObservable: CartObservable

    var product: Product

    var body: some View {
        GroupBox {
            HStack {
                Image(self.product.image)
                    .resizable()
                    .frame(width: 100, height: 60)
                    .padding(.trailing)
                VStack(alignment: .leading, spacing: 5) {
                    Text(self.product.name)
                    Text("\(self.product.quantity) gms")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("$\(self.product.price)")
                        .fontWeight(.bold)
                        .font(.title3)
                        .foregroundColor(.main)
                }
                Spacer()
                VStack {
                    if self.product.available {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray, lineWidth: 2)
                            .frame(width: 80, height: 30)
                            .overlay(
                                Text("Shelf 1")
                                    .foregroundColor(.gray)
                                    .font(.callout)
                            )
                        Button(action: {
                            self.cartObservable.addProduct(self.product)
                        }, label: {
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.main, lineWidth: 2)
                                .frame(width: 80, height: 30)
                                .overlay(
                                    HStack {
                                        Image(systemName: "plus")
                                            .foregroundColor(.main)
                                        Text("Add")
                                            .foregroundColor(.main)
                                            .font(.callout)
                                    }
                                )
                        })
                    } else {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray, lineWidth: 2)
                            .frame(width: 80, height: 30)
                            .overlay(
                                Text("Out of Stock")
                                    .foregroundColor(.gray)
                                    .font(.caption2)
                            )
                    }
                }
            }
        }
        .shadow(radius: 10)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: Product.dummy()[1])
    }
}
