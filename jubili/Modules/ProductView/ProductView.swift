//
//  ProductView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/12/21.
//

import SwiftUI

struct ProductView: View {
    
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    @Environment(\.presentationMode) private var presentation

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(colorScheme == .dark ? .appDarkGrayBG : .appLightGrayBG)
                    .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight / 2.2, alignment: .top)
                    .edgesIgnoringSafeArea(.top)
                VStack(alignment: .center, spacing: -32) {
                    HeaderView(showSearchButton: false, backButtonAction: moveBack, searchButtonAction: nil)
                    Image("5")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.screenWidth / 1.2, height: UIScreen.screenWidth / 1.2, alignment: .center)
                }
            }
            Button {
                //
            } label: {
                HStack(alignment: .center, spacing: 8) {
                    Image(systemName: "cart.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(.appBlue)
                    Text("Shopping")
                        .foregroundColor(.appBlue)
                        .font(.system(size: 14, weight: .medium, design: .default))
                }
            }
            .padding(.horizontal)
            SubHeaderView(title: "AKG N700NCM2",
                          address: "Audio shop on Rustaveli Ave 57.",
                          subTitle: "This shop offers both products and services",
                          showLinkView: true, headingFontSize: 30)
            Spacer()
            NavigationLink(destination: CartView().onAppear { updateCart() }) {
                FlatBlueButton(buttonText: "ADD TO CART")
                    .padding(.horizontal)
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
    
    private func updateCart() {
        print("Add cart tapped")
    }
    
    private func moveBack() {
        presentation.wrappedValue.dismiss()
    }
}
