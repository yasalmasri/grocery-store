//
//  CategoryCardBig.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct StoreCard: View {

    var store: Store

    var body: some View {
        NavigationLink(
            destination: StoreView(store: self.store),
            label: {
                GroupBox {
                    HStack {
                        Image(self.store.image)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .padding(.trailing)
                        VStack(alignment: .leading, spacing: 10) {
                            Text(self.store.name)

                            HStack {
                                Image(systemName: "mappin.and.ellipse")
                                Text(self.store.location)
                                    .font(.caption2)
                                    .foregroundColor(.gray)
                            }

                            Text(self.store.delivery)
                                .font(.caption2)
                        }
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("\(self.store.distance) km")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                }
                .shadow(radius: 5)
            })
            .buttonStyle(PlainButtonStyle())
    }
}

struct StoreCard_Previews: PreviewProvider {
    static var previews: some View {
        StoreCard(store: Store.dummy()[0])
    }
}
