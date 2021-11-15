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
            ProductDetailsTopView(backButtonAction: moveBack)
            
            ScrollView(.vertical, showsIndicators: false) {
                CartButtonView().padding(.horizontal).padding(.top, 30)
                
                SubHeaderView(title: "AKG N700NCM2",
                              address: "Audio shop on Rustaveli Ave 57.",
                              subTitle: "This shop offers both products and services",
                              showLinkView: true, headingFontSize: 30)
                
                ProductDetailsLocationView().padding(.horizontal)
                
                Rectangle()
                    .foregroundColor(.appDarkGrayBG)
                    .frame(width: UIScreen.screenWidth - 32, height: 1, alignment: .center)
                    .padding()
                
                ProductDetailsPriceView().padding(.horizontal)
                
                NavigationLink(destination: CartView().onAppear { updateCart() }) {
                    FlatBlueButton(buttonText: "ADD TO CART").padding()
                }
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
