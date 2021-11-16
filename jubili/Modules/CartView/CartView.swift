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
                    HStack(alignment: .center, spacing: 20) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(colorScheme == .dark ? .appDarkGrayBG : .appLightGrayBG)
                                .frame(width: 125, height: 125, alignment: .center)
                            Image("5")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 120, alignment: .center)
                        }
                        VStack(alignment: .leading, spacing: 8) {
                            Text("AKG N700NCM2 Wireless Headphone")
                                .font(.system(size: 18, weight: .semibold, design: .default))
                            Text("$199.00 (~$4.00 Tax)")
                                .foregroundColor(.appLightGrayText)
                                .font(.system(size: 14, weight: .medium, design: .default))
                            HStack(alignment: .center, spacing: 0) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .frame(width: 30, height: 30, alignment: .center)
                                        .foregroundColor(.clear)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(Color.appLightGrayBG, lineWidth: 2)
                                        )
                                    Button {
                                        //
                                    } label: {
                                        Image(systemName: "minus")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 12, height: 12, alignment: .center)
                                            .foregroundColor(.appLightGrayBG)
                                    }
                                }
                                
                                Text("1")
                                    .foregroundColor(.appLightGrayText)
                                    .font(.system(size: 14, weight: .medium, design: .default))
                                    .frame(width: 50, height: 30, alignment: .center)
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .frame(width: 30, height: 30, alignment: .center)
                                        .foregroundColor(.clear)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(Color.appLightGrayBG, lineWidth: 2)
                                        )
                                    Button {
                                        //
                                    } label: {
                                        Image(systemName: "plus")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 12, height: 12, alignment: .center)
                                            .foregroundColor(.appLightGrayBG)
                                    }
                                }
                                
                                Spacer()
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .foregroundColor(.appLightGrayBG)
                                        .frame(width: 30, height: 30, alignment: .center)
                                    Button {
                                        //
                                    } label: {
                                        Image(systemName: "trash")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 14, height: 14, alignment: .center)
                                            .foregroundColor(.appDarkBG)
                                    }
                                }
                            }.padding(.top)
                        }
                    }
                }.padding()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Delivery Location")
                        .font(.system(size: 22, weight: .semibold, design: .default))
                    ProductDetailsLocationView()
                }.padding()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Payment Method")
                        .font(.system(size: 22, weight: .semibold, design: .default))
                    
                    HStack(alignment: .center, spacing: 20) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 6)
                                .foregroundColor(.appLightGrayBG)
                                .frame(width: 50, height: 30, alignment: .center)
                            Image("visa")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 30, alignment: .center)
                        }
                        VStack(alignment: .leading, spacing: 4) {
                            Text("VISA Classic")
                                .font(.system(size: 18, weight: .semibold, design: .default))
                            Text("****-0921")
                                .foregroundColor(.appLightGrayText)
                                .font(.system(size: 14, weight: .medium, design: .default))
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.appDarkBG)
                            .frame(width: 20, height: 20, alignment: .center)
                    }
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
