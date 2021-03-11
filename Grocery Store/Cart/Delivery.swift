//
//  Delivery.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct Delivery: View {

    @State private var selectedOption = "regular"

    var body: some View {
        VStack {
            CheckoutStepper()

            DeliveryOption(
                title: "Regular Delivery",
                description: "Order will be delivered between in the time slots available",
                option: "regular",
                selectedOption: $selectedOption
            )
            DeliveryOption(
                title: "Express Delivery",
                description: "Items will be delivered in 2-3 hours if the order is placed before 6pm.",
                option: "express",
                selectedOption: $selectedOption
            )
            DeliveryOption(
                title: "Pickup",
                description: "Pre-pay and pick up or vice versa.",
                option: "pickup",
                selectedOption: $selectedOption
            )
            Spacer()

            NavigationLink(
                destination: AddressesView(),
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

struct Delivery_Previews: PreviewProvider {
    static var previews: some View {
        Delivery()
    }
}
