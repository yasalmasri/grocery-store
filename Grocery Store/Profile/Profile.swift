//
//  Profile.swift
//  Grocery Store
//
//  Created by Yaser Almasri on 07/03/21.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack {
                        Image("UserProfile")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 50, height: 50, alignment: .center)
                        Text("John Doe")
                        Spacer()
                    }
                    .padding()
                }

                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        HStack {
                            Image(systemName: "person.fill")
                            Text("Edit Profile")
                            Spacer()
                        }
                        .padding()
                    })

                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        HStack {
                            Image(systemName: "mappin.and.ellipse")
                            Text("Shipping Address")
                            Spacer()
                        }
                        .padding()
                    })

                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        HStack {
                            Image(systemName: "clock")
                            Text("Order History")
                            Spacer()
                        }
                        .padding()
                    })

                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        HStack {
                            Image(systemName: "bell")
                            Text("Notifications")
                            Spacer()
                        }
                        .padding()
                    })

                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        HStack {
                            Image(systemName: "creditcard")
                            Text("Cards")
                            Spacer()
                        }
                        .padding()
                    })

                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        HStack {
                            Image(systemName: "lock")
                            Text("Log out")
                            Spacer()
                        }
                        .padding()
                    })
            }
            .navigationTitle(Text("Profile"))
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
