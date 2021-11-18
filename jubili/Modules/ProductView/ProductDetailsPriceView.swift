//
//  ProductDetailsPriceView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/15/21.
//

import SwiftUI

struct ProductDetailsPriceView: View {
    
    let product: ProductModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            VStack(alignment: .leading, spacing: 8) {
                Text("$\(product.calculateFinalPrice()).00")
                    .font(.system(size: 22, weight: .semibold, design: .default))
                Text("Tax Rate \(Int(product.productTaxRate))% - $\(Int((product.calculateTax()).rounded())).00 (~$\(Int((product.productPrice).rounded())).00)")
                    .foregroundColor(.appLightGrayText)
                    .font(.system(size: 14, weight: .medium, design: .default))
            }
            Spacer()
        }
    }
}
