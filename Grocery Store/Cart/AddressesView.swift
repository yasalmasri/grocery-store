//
//  AddressesView.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 10/03/21.
//

import SwiftUI

struct AddressesView: View {

    @State private var selectedOption = "Home"

    var body: some View {
        VStack {
            CheckoutStepper(step: 2)

            AddressOption(
                title: "Address: Home",
                description: "Mantri Square, Near Columbia Asia Hospital Bangalore - 560102",
                option: "Home",
                selectedOption: self.$selectedOption
            )
            AddressOption(
                title: "Address: Office",
                description: "HAL 3rd Stage, Indiranagar, Near Empire Hotel, Bangalore - 560037",
                option: "Office",
                selectedOption: $selectedOption
            )
            Spacer()

            NavigationLink(
                destination: PaymentView(),
                label: {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.main)
                        .frame(width: 240, height: 50)
                        .overlay(
                            HStack {
                                Spacer()
                                Text("Next")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.body)
                                Spacer()
                            }
                            .padding()
                        )
                })
                .padding(.bottom)
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(Text("Checkout"))
    }
}

struct AddressesView_Previews: PreviewProvider {
    static var previews: some View {
        AddressesView()
    }
}
