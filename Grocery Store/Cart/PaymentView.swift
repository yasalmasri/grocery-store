//
//  PaymentView.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 10/03/21.
//

import SwiftUI

struct PaymentView: View {

    @State private var selectedOption = "Debit/Credit Card"

    var body: some View {
        VStack {
            CheckoutStepper(step: 3)

            PaymentOption(
                title: "Debit/Credit Card",
                option: "Debit/Credit Card",
                selectedOption: self.$selectedOption
            )
            PaymentOption(
                title: "Paytm",
                option: "Paytm",
                selectedOption: self.$selectedOption
            )
            PaymentOption(
                title: "PhonePe",
                option: "PhonePe",
                selectedOption: self.$selectedOption
            )
            PaymentOption(
                title: "Freecharge",
                option: "Freecharge",
                selectedOption: self.$selectedOption
            )
            Spacer()

            Button(action: {}, label: {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.main)
                    .frame(width: 240, height: 50)
                    .overlay(
                        HStack {
                            Spacer()
                            Text("Pay Now")
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

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}
