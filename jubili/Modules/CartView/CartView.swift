//
//  CartView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/12/21.
//

import SwiftUI

struct CartView: View {
    
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    @Environment(\.presentationMode) private var presentation
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HeaderView(showSearchButton: false, backButtonAction: moveBack, searchButtonAction: nil)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("My Cart")
                        .font(.system(size: 22, weight: .semibold, design: .default))
                }
                ForEach(CartManager.shared.getCurrentCart().products, id: \.id) { product in
                    VStack(alignment: .center, spacing: 20) {
                        CartItemView(product: product)
                            .padding()
                    }
                }
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Delivery Location")
                        .font(.system(size: 22, weight: .semibold, design: .default))
                    ProductDetailsLocationView(addressLineOne: "2 Petre Melikishvili St.", addressLineTwo: "0162 Tbilisi")
                }
                .padding()
                
                PaymentMethodView()
                    .padding()
                
                OrderPriceView(subTotal: CartManager.shared.calculateFinalPriceWithoutCost(), total: CartManager.shared.calculateFinalPriceWithCost(), cost: CartManager.shared.getCurrentCart().shippingCost)
                    .padding()
                
                FlatBlueButton(buttonText: "CHECKOUT ($\(CartManager.shared.calculateFinalPriceWithCost()).00)").padding()
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
    
    private func moveBack() {
        presentation.wrappedValue.dismiss()
    }
}
