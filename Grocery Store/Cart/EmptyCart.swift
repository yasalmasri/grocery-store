//
//  EmptyCart.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 07/03/21.
//

import SwiftUI

struct EmptyCart: View {
    var body: some View {
        VStack {
            Spacer()
            Image("EmptyCart")
            Spacer()
            Text("No Items in the Cart")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 15)
            Text("Your cart is empty. Add some items to see it here.")
                .multilineTextAlignment(.center)
                .frame(width: 200)
                .foregroundColor(.gray)
            Spacer()
            Button(action: {}, label: {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.main)
                    .frame(width: 240, height: 50)
                    .overlay(
                        Text("Add to Cart")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.body)
                    )
            })
        }
        .padding(.bottom)
    }
}

struct EmptyCart_Previews: PreviewProvider {
    static var previews: some View {
        EmptyCart()
    }
}
