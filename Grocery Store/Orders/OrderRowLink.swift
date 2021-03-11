//
//  OrderRowLink.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 07/03/21.
//

import SwiftUI

struct OrderRowLink: View {
    var body: some View {
        NavigationLink(
            destination: Text("Order"),
            label: {
                HStack(alignment: .top) {
                    VStack(alignment: .center) {
                        Text("10")
                            .font(.title)
                            .fontWeight(.medium)
                        Text("May")
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                    }

                    Image("OrderMask")
                    .overlay(
                        VStack {
                            HStack {
                                Text("03 Items")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            HStack {
                                Text("Store Name")
                                    .foregroundColor(.second)
                                    .font(.title)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(.bottom, 10)
                            HStack {
                                Spacer()
                                Button(action: {}, label: {
                                    Text("Reorder")
                                        .font(.caption)
                                        .foregroundColor(.second)
                                        .padding(.vertical, 8)
                                        .padding(.horizontal, 25)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 25)
                                                .stroke(Color.second, lineWidth: 1)
                                        )
                                })
                                Spacer()
                            }
                            .padding(.bottom, 10)
                        }
                        .padding(.leading, 20)
                    )
                }
            })
            .buttonStyle(PlainButtonStyle())
    }
}

struct OrderRowLink_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowLink()
    }
}
