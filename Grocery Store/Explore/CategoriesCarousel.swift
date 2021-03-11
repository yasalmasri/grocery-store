//
//  CategoriesCarousel.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct CategoriesCarousel: View {
    var body: some View {
        VStack {
            HStack {
                Text("Categories")
                Spacer()
                NavigationLink(
                    destination: Categories(),
                    label: {
                        Text("View All")
                            .font(.callout)
                            .foregroundColor(.main)
                    })
            }
            .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    CategoryCard(title: "All", image: "CategoryAll")
                    CategoryCard(title: "Medicines", image: "CategoryMedicines")
                    CategoryCard(title: "Vegetables", image: "CategoryVegetables")
                    CategoryCard(title: "Fruits", image: "CategoryFruits")
                    CategoryCard(title: "Utilities", image: "CategoryUtilities")
                }
                .padding(.horizontal)
            }
            .frame(minHeight: 100)
        }
    }
}

struct CategoriesCarousel_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesCarousel()
    }
}
