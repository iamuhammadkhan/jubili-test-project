//
//  ProductCardView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/13/21.
//

import SwiftUI

struct ProductCardView: View {
    
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    let availbility: AvailabilityType

    var body: some View {
        NavigationLink(destination: ProductView()) {
            VStack(alignment: .leading, spacing: 10) {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(.appLightGrayBG)
                        .frame(width: (UIScreen.screenWidth / 2) - 24, height: (UIScreen.screenWidth / 2) - 60, alignment: .center)
                    Image("5")
                        .resizable()
                        .scaledToFit()
                        .frame(width: (UIScreen.screenWidth / 2) - 50, height: (UIScreen.screenWidth / 2) - 50, alignment: .center)
                }
                Text("AKG N700NCM2 Wireless Headphones")
                    .font(.system(size: 16, weight: .semibold, design: .default))
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
                Text("$199.00")
                    .font(.system(size: 14, weight: .medium, design: .default))
                    .foregroundColor(.appLightGrayText)
            }
            .padding(.leading)
        }
    }
}

enum AvailabilityType: String {
    case none, available, unavailable
}
