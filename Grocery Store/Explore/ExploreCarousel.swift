//
//  ExploreCarousel.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct ExploreCarousel: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                CarouselCard(title: "January Offer", subtitle: "Get cashback up to 30% for all transaction")
                CarouselCard(title: "Safety Standards", subtitle: "Keeping you and our partners safe amid Covid -19")
                CarouselCard(title: "January Offer", subtitle: "Get cashback up to 30% for all transaction")
                CarouselCard(title: "Safety Standards", subtitle: "Keeping you and our partners safe amid Covid -19")
            }
            .padding()
        }
    }
}

struct ExploreCarousel_Previews: PreviewProvider {
    static var previews: some View {
        ExploreCarousel()
    }
}
