//
//  CategoryCard.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct CategoryCard: View {

    var title: String
    var image: String

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 5)
                .fill(Color.white)
                .shadow(radius: 5)
                .frame(width: 60, height: 60)
                .overlay(
                    Image(self.image)
                        .resizable()
                        .frame(width: 40, height: 40)
                )

            Text(self.title)
                .font(.caption)
        }
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard(title: "Category", image: "octagon.fill")
    }
}
