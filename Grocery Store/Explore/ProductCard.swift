//
//  ProductCard.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct ProductCard: View {

    var imageName: String

    var body: some View {
        GroupBox {
            Image(self.imageName)
                .resizable()
                .frame(width: 160, height: 160)
                .cornerRadius(10)
        }

    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(imageName: "Mango")
    }
}
