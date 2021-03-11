//
//  DeliveryOption.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct DeliveryOption: View {

    var title: String
    var description: String
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
                    VStack {
                        HStack {
                            Text(self.title)
                                .font(.callout)
                            Spacer()
                        }
                        HStack(alignment: .center) {
                            Text(self.description)
                                .foregroundColor(.gray)
                                .font(.caption)
                            Spacer()
                        }
                        .padding(.top, 5)
                    }
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

struct DeliveryOption_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryOption(
            title: "Lorem Ipsum",
            description: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
            option: "",
            selectedOption: .constant("")
        )
    }
}
