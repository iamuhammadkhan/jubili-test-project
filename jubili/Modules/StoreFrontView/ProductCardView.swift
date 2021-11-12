//
//  ProductCardView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/13/21.
//

import SwiftUI

struct ProductCardView: View {
    
//    let cornerRadius: CGFloat
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.appLightGrayBG)
                    .frame(width: (UIScreen.screenWidth / 2) - 32, height: 120, alignment: .center)
                Image("1")
                    .resizable()
                    .frame(width: 90, height: 75, alignment: .center)
            }
            Text("AKG N700NCM2 Wireless Headphones")
                .font(.system(size: 16, weight: .semibold, design: .default))
            Text("$199.00")
                .font(.system(size: 14, weight: .medium, design: .default))
                .foregroundColor(.appLightGrayText)
        }
    }
}
