//
//  ProductCarouselHeaderView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/13/21.
//

import SwiftUI

struct ProductCarouselHeaderView: View {
    
    let productsTitle: String
    let numberOfProducts: Int
    
    var body: some View {
        HStack(alignment: .center, spacing: 2) {
            HStack(alignment: .center, spacing: 2) {
                Text(productsTitle)
                    .font(.system(size: 16, weight: .semibold, design: .default))
                Text("\(numberOfProducts)")
                    .font(.system(size: 16, weight: .semibold, design: .default))
                    .foregroundColor(.appLightGrayText)
            }
            Spacer()
            Button {
                // Handle action here
            } label: {
                Text("Show all")
                    .font(.system(size: 14, weight: .medium, design: .default))
                    .foregroundColor(.appBlue)
            }
        }
    }
}
