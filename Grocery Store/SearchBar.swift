//
//  SearchBar.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 05/02/21.
//

import SwiftUI

struct SearchBar: View {

    @Binding var searchText: String
    @Binding var isSearching: Bool

    var onSearch: (()->Void)

    var body: some View {
        HStack {
            HStack {
                TextField("search", text: $searchText, onEditingChanged: { (edit) in
                }, onCommit: {
                    self.onSearch()
                })
                .padding(.leading, 22)
                .keyboardType(.webSearch)
                .autocapitalization(.none)
                .padding(5)
            }
            .background(Color(.systemGray5))
            .cornerRadius(10)
            .padding(isSearching ? .leading : .horizontal)
            .onTapGesture(perform: {
                isSearching = true
            })
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                    Spacer()

                    if isSearching && !self.searchText.isEmpty {
                        Button(action: { searchText = "" }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .padding(.vertical)
                        })
                    }
                }
                .padding(.leading, 22)
                .padding(.trailing, 5)
                .foregroundColor(.gray)
            )
            .transition(.move(edge: .trailing))
            .animation(.spring())

            if isSearching {
                Button(action: {
                    isSearching = false
                    searchText = ""

                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)

                }, label: {
                    Text("cancel")
                        .padding(.trailing)
                        .padding(.leading, 0)
                })
                .transition(.move(edge: .trailing))
                .animation(.spring())
            }

        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant("123"), isSearching: .constant(true)) {
        }
    }
}
