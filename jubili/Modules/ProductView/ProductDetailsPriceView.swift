//
//  ProductDetailsPriceView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/15/21.
//

import SwiftUI

struct ProductDetailsPriceView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            VStack(alignment: .leading, spacing: 8) {
                Text("$199.00")
                    .font(.system(size: 22, weight: .semibold, design: .default))
                Text("Tax Rate 2% - $4.00 (~$195.00)")
                    .foregroundColor(.appLightGrayText)
                    .font(.system(size: 14, weight: .medium, design: .default))
            }
            Spacer()
        }
    }
}
