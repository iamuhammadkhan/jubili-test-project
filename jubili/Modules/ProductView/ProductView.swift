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
    let product: ProductModel
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            ScrollView(.vertical, showsIndicators: false) {
                ProductDetailsTopView(productImages: product.productImages)
                
                CartButtonView().padding(.horizontal).padding(.top, 30)
                
                SubHeaderView(title: product.productNumber,
                              address: "Audio shop on Rustaveli Ave 57.",
                              subTitle: "This shop offers both products and services",
                              showLinkView: true, headingFontSize: 30)
                
                ProductDetailsLocationView(addressLineOne: "Rustaveli Ave 57,", addressLineTwo: "17-001, Batumi").padding(.horizontal)
                
                Rectangle()
                    .foregroundColor(.appDarkGrayBG)
                    .frame(width: UIScreen.screenWidth - 32, height: 1, alignment: .center)
                    .padding()
                
                ProductDetailsPriceView(product: product).padding(.horizontal)
                
                NavigationLink(destination: CartView().onAppear { updateCart() }) {
                    FlatBlueButton(buttonText: "ADD TO CART").padding()
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
            
            HeaderView(showSearchButton: false, backButtonAction: moveBack, searchButtonAction: nil)
        }
    }
    
    private func updateCart() {
        CartManager.shared.updateCart(product)
    }
    
    private func moveBack() {
        presentation.wrappedValue.dismiss()
    }
}
