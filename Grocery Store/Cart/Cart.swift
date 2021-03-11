//
//  Cart.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 07/03/21.
//

import SwiftUI

struct Cart: View {

    @EnvironmentObject var cartObservable: CartObservable

    @State private var isContactFreeDelivery = true

    var body: some View {
        NavigationView {
            VStack {
                if self.cartObservable.items.count == 0 {
                    EmptyCart()
                } else {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("More Mega Store")
                            Text("Bellandur")
                                .foregroundColor(.gray)
                                .font(.caption2)
                        }
                        Spacer()
                        Button(action: {}, label: {
                            Text("+ Add Items")
                                .font(.subheadline)
                                .foregroundColor(.main)
                        })
                    }
                    .padding()

                    List {
                        ForEach(self.cartObservable.items) { item in
                            CartItem(item: item)
                        }
                        .onDelete(perform: onDeleteItem)
                    }
                    .listStyle(InsetGroupedListStyle())


                    GroupBox {
                        HStack {
                            Toggle(isOn: self.$isContactFreeDelivery, label: {
                                VStack(alignment: .leading) {
                                    Text("Contact Free Delivery")
                                        .fontWeight(.bold)
                                        .font(.headline)
                                    Text("Please leave my order at the doorstep")
                                        .foregroundColor(.gray)
                                        .font(.caption)
                                }
                            })
                        }
                    }
                    .padding(.horizontal)

                    VStack(spacing: 5) {
                        HStack {
                            Text("Payment Details")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        HStack {
                            Text("Sub total")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("$\(self.cartObservable.subtotal)")
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Tax")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("$\(self.cartObservable.tax)")
                                .fontWeight(.bold)
                        }
                    }
                    .padding(.horizontal)

                    NavigationLink(
                        destination: Delivery(),
                        label: {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.main)
                                .frame(width: 240, height: 50)
                                .overlay(
                                    HStack {
                                        Text("Checkout")
                                            .foregroundColor(.white)
                                            .fontWeight(.bold)
                                            .font(.body)
                                        Spacer()
                                        Text("$\(self.cartObservable.total)")
                                            .foregroundColor(.white)
                                            .fontWeight(.bold)
                                            .font(.body)
                                    }
                                    .padding()
                                )
                        })
                        .padding(.bottom)
                }
            }
            .navigationBarTitle(Text("Cart"))
        }
    }

    private func onDeleteItem (indexSet: IndexSet) {
        if let index = indexSet.first {
            let item = self.cartObservable.items[index]
            self.cartObservable.removeProduct(item)
        }
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        CartObservable.current.addProduct(Product.dummy()[0])
        return Cart()
            .environmentObject(CartObservable.current)
    }
}
