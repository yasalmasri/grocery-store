//
//  PaymentOption.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 10/03/21.
//

import SwiftUI

struct PaymentOption: View {

    var title: String
    var option: String
    @Binding var selectedOption: String

    var isSelected: Bool {
        get {
            return self.selectedOption == self.option
        }
    }
    var color: Color {
        get {
            return self.isSelected ? Color.main : Color.gray
        }
    }

    var body: some View {
        Button(action: {
            self.selectedOption = self.option
        }, label: {
            GroupBox {
                HStack {
                    Text(self.title)
                        .font(.callout)
                    Spacer()
                    if self.isSelected {
                        Image(systemName: "record.circle")
                            .imageScale(.large)
                            .foregroundColor(self.color)
                    } else {
                        Image(systemName: "circle")
                            .imageScale(.large)
                            .foregroundColor(self.color)
                    }
                }
            }
        })
        .buttonStyle(PlainButtonStyle())
    }
}

struct PaymentOption_Previews: PreviewProvider {
    static var previews: some View {
        PaymentOption(
            title: "",
            option: "",
            selectedOption: .constant(""))
    }
}
