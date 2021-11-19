//
//  OrderPriceView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/19/21.
//

import SwiftUI

struct OrderPriceView: View {
    
    let subTotal: Int
    let total: Int
    let cost: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Order Info")
                .font(.system(size: 22, weight: .semibold, design: .default))
                .padding(.bottom)
            
            HStack(alignment: .center, spacing: 8) {
                Text("Subtotal")
                    .foregroundColor(.appLightGrayText)
                    .font(.system(size: 14, weight: .medium, design: .default))
                Spacer()
                Text("$\(subTotal).00")
                    .foregroundColor(.appDarkGrayBG)
                    .font(.system(size: 15, weight: .semibold, design: .default))
            }
            
            HStack(alignment: .center, spacing: 8) {
                Text("Shipping Cost")
                    .foregroundColor(.appLightGrayText)
                    .font(.system(size: 14, weight: .medium, design: .default))
                Spacer()
                Text("+$\(cost).00")
                    .foregroundColor(.appDarkGrayBG)
                    .font(.system(size: 15, weight: .semibold, design: .default))
            }
            
            HStack(alignment: .center, spacing: 8) {
                Text("Total")
                    .foregroundColor(.appLightGrayText)
                    .font(.system(size: 14, weight: .medium, design: .default))
                Spacer()
                Text("$\(total).00")
                    .font(.system(size: 22, weight: .semibold, design: .default))
            }.padding(.top, 8)
        }
    }
}
