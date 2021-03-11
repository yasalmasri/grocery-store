//
//  AddressOption.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 10/03/21.
//

import SwiftUI

struct AddressOption: View {

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
                        HStack {
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

struct AddressOption_Previews: PreviewProvider {
    static var previews: some View {
        AddressOption(
            title: "Address: Home",
            description: "Mantri Square, Near Columbia Asia Hospital Bangalore - 560102",
            option: "",
            selectedOption: .constant("")
        )
    }
}
