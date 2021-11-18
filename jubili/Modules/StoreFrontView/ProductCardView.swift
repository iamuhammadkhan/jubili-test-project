//
//  ProductCardView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/13/21.
//

import SwiftUI

struct ProductCardView: View {
    
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    let product: ProductModel

    var body: some View {
        NavigationLink(destination: ProductView(product: product)) {
            VStack(alignment: .leading, spacing: 10) {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(.appLightGrayBG)
                        .frame(width: (UIScreen.screenWidth / 2) - 24, height: (UIScreen.screenWidth / 2) - 60, alignment: .center)
                    Image(product.productImages.first?.imageName ?? "5")
                        .resizable()
                        .scaledToFit()
                        .frame(width: (UIScreen.screenWidth / 2.5), height: (UIScreen.screenWidth / 3), alignment: .center)
                }
                Text("\(product.productNumber) \(product.productSpeciality)")
                    .font(.system(size: 16, weight: .semibold, design: .default))
                let availbility = product.availabilityStatus
                if availbility != .none {
                    HStack(alignment: .center, spacing: 4) {
                        Circle()
                            .foregroundColor(availbility == .available ? .appGreenText : .appRedText)
                            .frame(width: 8, height: 8, alignment: .center)
                        Text(availbility.rawValue.capitalized)
                            .foregroundColor(availbility == .available ? .appGreenText : .appRedText)
                            .font(.system(size: 14, weight: .medium, design: .default))
                    }
                }
                Text("$\(product.calculateFinalPrice()).00")
                    .font(.system(size: 14, weight: .medium, design: .default))
                    .foregroundColor(.appLightGrayText)
            }
            .padding(.leading)
        }
    }
}
