//
//  ProductsCarousel.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct ProductsCarousel: View {
    var body: some View {
        VStack {
            HStack {
                Text("Featured Products")
                Spacer()
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Text("View All")
                            .font(.callout)
                            .foregroundColor(.main)
                    })
            }
            .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ProductCard(imageName: "Mango")
                    ProductCard(imageName: "Apple")
                    ProductCard(imageName: "Mango")
                    ProductCard(imageName: "Apple")
                    ProductCard(imageName: "Mango")
                    ProductCard(imageName: "Apple")
                    ProductCard(imageName: "Mango")
                    ProductCard(imageName: "Apple")
                }
                .padding(.horizontal)
            }
        }
    }
}

struct ProductsCarousel_Previews: PreviewProvider {
    static var previews: some View {
        ProductsCarousel()
    }
}
