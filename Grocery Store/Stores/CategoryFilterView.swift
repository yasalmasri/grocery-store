//
//  CategoryFilterView.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct CategoryFilterView: View {

    @State private var selectedItem = 3

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                ForEach((1...5), id: \.self) { index in
                    Button(action: {
                        self.selectedItem = index
                    }, label: {
                        if self.selectedItem == index {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.main)
                                .frame(width: 80, height: 30)
                                .overlay(
                                    Text("Item")
                                        .font(.callout)
                                        .foregroundColor(.white)
                                )
                        } else {
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 2)
                                .frame(width: 80, height: 30)
                                .overlay(
                                    Text("Item")
                                        .font(.callout)
                                        .foregroundColor(.gray)
                                )
                        }
                    })
                }
            }
        })
        .padding(.top)
    }
}

struct CategoryFilterView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryFilterView()
    }
}
