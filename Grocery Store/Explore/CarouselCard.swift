//
//  CarouselCard.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct CarouselCard: View {

    var title: String
    var subtitle: String

    var body: some View {
        Image("CarouselMask")
            .resizable()
            .frame(width: 280, height: 150)
            .overlay(
                VStack {
                    HStack {
                        Text(self.title)
                            .font(.title)
                            .foregroundColor(.second)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    .padding([.top, .leading, .bottom])
                    Text(self.subtitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    Spacer()
                }
            )
    }
}

struct CarouselCard_Previews: PreviewProvider {
    static var previews: some View {
        CarouselCard(title: "January Offer", subtitle: "Get cashback up to 30% for all transaction")
        CarouselCard(title: "Safety Standards", subtitle: "Keeping you and our partners safe amid Covid -19")
    }
}
