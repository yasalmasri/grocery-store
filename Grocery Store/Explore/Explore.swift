//
//  Explore.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 07/03/21.
//

import SwiftUI

struct Explore: View {

    @EnvironmentObject var cartObservable: CartObservable

    @State private var searchText = ""
    @State private var isSearching = false

    var body: some View {
        NavigationView {
            VStack {
                SearchBar(searchText: $searchText, isSearching: $isSearching) {
                }
                ScrollView(.vertical, showsIndicators: false) {
                    ExploreCarousel()
                    
                    CategoriesCarousel()
                        .padding(.top)

                    ProductsCarousel()
                        .padding(.top)
                }
            }
            .padding(.top)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: VStack(alignment: .leading, spacing: 0) {
                Text("Hi, John")
                    .font(.caption)
                    .fontWeight(.bold)
                HStack {
                    Text("Sarjapur, Bangalore")
                        .font(.caption2)
                        .foregroundColor(.main)
                    Image(systemName: "chevron.down")
                        .resizable()
                        .foregroundColor(.main)
                        .frame(width: 10, height: 5)
                }
            }, trailing: Button(action: {
                self.cartObservable.changeTab(4)
            }, label: {
                Image("UserProfile")
            }))
        }
    }
}

struct Explore_Previews: PreviewProvider {
    static var previews: some View {
        Explore()
    }
}
