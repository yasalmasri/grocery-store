//
//  CheckoutStepper.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 08/03/21.
//

import SwiftUI

struct CheckoutStepper: View {

    var step: Int = 1

    var body: some View {
        HStack {
            CheckoutStepperItem(title: "Delivery", active: self.step >= 1)
            Spacer()
            CheckoutStepperItem(title: "Address", active: self.step >= 2)
            Spacer()
            CheckoutStepperItem(title: "Payment", active: self.step == 3)

        }
        .padding(.horizontal)
    }
}

struct CheckoutStepper_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutStepper()
    }
}

struct CheckoutStepperItem: View {

    var title: String
    var active = true

    var body: some View {
        VStack {
            if self.active {
                Image(systemName: "record.circle")
                    .imageScale(.large)
                    .foregroundColor(.main)
            } else {
                Image(systemName: "circle")
                    .imageScale(.large)
                    .foregroundColor(.gray)
            }
            Text(self.title)
                .font(.callout)
                .padding(.top, 3)
        }
    }
}
