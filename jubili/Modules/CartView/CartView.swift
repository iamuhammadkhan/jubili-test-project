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
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("My Cart")
                        .font(.system(size: 22, weight: .semibold, design: .default))
                }.padding()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Delivery Location")
                        .font(.system(size: 22, weight: .semibold, design: .default))
                    ProductDetailsLocationView()
                }.padding()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Payment Method")
                        .font(.system(size: 22, weight: .semibold, design: .default))
                    
                    
                }.padding()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Order Info")
                        .font(.system(size: 22, weight: .semibold, design: .default))
                        .padding(.bottom)
                    
                    HStack(alignment: .center, spacing: 8) {
                        Text("Subtotal")
                            .foregroundColor(.appLightGrayText)
                            .font(.system(size: 14, weight: .medium, design: .default))
                        Spacer()
                        Text("$199.00")
                            .foregroundColor(.appDarkGrayBG)
                            .font(.system(size: 15, weight: .semibold, design: .default))
                    }
                    
                    HStack(alignment: .center, spacing: 8) {
                        Text("Shipping Cost")
                            .foregroundColor(.appLightGrayText)
                            .font(.system(size: 14, weight: .medium, design: .default))
                        Spacer()
                        Text("+$10.00")
                            .foregroundColor(.appDarkGrayBG)
                            .font(.system(size: 15, weight: .semibold, design: .default))
                    }
                    
                    HStack(alignment: .center, spacing: 8) {
                        Text("Total")
                            .foregroundColor(.appLightGrayText)
                            .font(.system(size: 14, weight: .medium, design: .default))
                        Spacer()
                        Text("$209.00")
                            .font(.system(size: 22, weight: .semibold, design: .default))
                    }.padding(.top, 8)
                }.padding()
                
                FlatBlueButton(buttonText: "CHECKOUT ($209.00)").padding()
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
    
    private func moveBack() {
        presentation.wrappedValue.dismiss()
    }
}
