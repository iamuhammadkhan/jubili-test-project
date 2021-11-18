//
//  ProductCarouselView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/13/21.
//

import SwiftUI

struct ProductCarouselView: View {
    
    let category: CategoryModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProductCarouselHeaderView(productsTitle: category.categoryName.rawValue.capitalized, numberOfProducts: category.products.count)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(category.products, id: \.id) { product in
                        ProductCardView(product: product).frame(width: (UIScreen.screenWidth / 2) - 8, height: .infinity, alignment: .center)
                    }
                }
            }
        }
    }
}
