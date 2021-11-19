//
//  CartItemView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/19/21.
//

import SwiftUI

struct CartItemView: View {
    
    @State private var count = 1
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    let product: ProductModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(alignment: .center, spacing: 20) {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(colorScheme == .dark ? .appDarkGrayBG : .appLightGrayBG)
                        .frame(width: 125, height: 125, alignment: .center)
                    Image(product.productImages.first?.imageName ?? "5")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120, alignment: .center)
                }
                VStack(alignment: .leading, spacing: 8) {
                    Text("\(product.productNumber) \(product.productSpeciality)")
                        .font(.system(size: 18, weight: .semibold, design: .default))
                    Text("$\(product.calculateFinalPrice()).00 (~$\(Int(product.calculateTax())).00 Tax)")
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
                                if count > 1 {
                                    count -= 1
                                }
                            } label: {
                                Image(systemName: "minus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 12, height: 12, alignment: .center)
                                    .foregroundColor(.appLightGrayBG)
                            }
                        }
                        
                        Text("\(count)")
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
                                count += 1
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
        }
    }
}
