//
//  StoreView.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct StoreView: View {

    @EnvironmentObject var cartObservable: CartObservable

    @State private var searchText = ""
    @State private var isSearching = false

    var store: Store

    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    HStack {
                        Image(self.store.image)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .padding(.trailing)
                        VStack(alignment: .leading) {
                            Text(self.store.name)
                            Text(self.store.desc)
                                .foregroundColor(.gray)
                            Text("\(self.store.distance) km")
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }
                }
                .padding()

                SearchBar(searchText: self.$searchText, isSearching: self.$isSearching) {
                }
                .padding(.top)

                CategoryFilterView()

                StoreProducts()
                    .padding()
            }
            if self.cartObservable.items.count > 0 {
                Rectangle()
                    .fill(Color.main)
                    .frame(height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: "cart.fill")
                                .foregroundColor(.white)
                            Text("\(self.cartObservable.items.count) Items")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Image(systemName: "circle.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 7, height: 7)
                            Text("$120")
                                .fontWeight(.bold)
                                .font(.callout)
                                .foregroundColor(.white)
                            Spacer()
                            Button(action: {
                                self.cartObservable.changeTab(3)
                            }, label: {
                                Text("View Cart")
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 5)
                                    .font(.callout)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 2)
                                    )
                            })
                        }
                        .padding(.horizontal)
                    )
            }
        }
        .navigationTitle(Text("Store"))
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView(store: Store.dummy()[0])
            .environmentObject(CartObservable.current)
    }
}
