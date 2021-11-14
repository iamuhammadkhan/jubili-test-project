//
//  ProductCarouselView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/13/21.
//

import SwiftUI

struct ProductCarouselView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProductCarouselHeaderView(productsTitle: "Products", numberOfProducts: 12)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ProductCardView(availbility: .available).frame(width: (UIScreen.screenWidth / 2) - 8, height: .infinity, alignment: .center)
                    ProductCardView(availbility: .unavailable).frame(width: (UIScreen.screenWidth / 2) - 8, height: .infinity, alignment: .center)
                    ProductCardView(availbility: .none).frame(width: (UIScreen.screenWidth / 2) - 8, height: .infinity, alignment: .center)
                }
            }
        }
    }
}
