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
            ProductCardView()
        }
        .padding()
    }
}
