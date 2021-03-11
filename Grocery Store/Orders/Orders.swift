//
//  Orders.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 07/03/21.
//

import SwiftUI

struct Orders: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: [.init()]) {
                    OrderRowLink()

                    OrderRowLink()

                    OrderRowLink()

                    OrderRowLink()

                    OrderRowLink()

                    OrderRowLink()
                }
            }
            .padding()
            .navigationTitle(Text("Orders"))
        }
    }
}

struct Orders_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Orders()
        }
    }
}
