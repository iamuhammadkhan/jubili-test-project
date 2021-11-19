//
//  PaymentMethodView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/19/21.
//

import SwiftUI

struct PaymentMethodView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Payment Method")
                .font(.system(size: 22, weight: .semibold, design: .default))
            
            HStack(alignment: .center, spacing: 20) {
                ZStack {
                    RoundedRectangle(cornerRadius: 6)
                        .foregroundColor(.appLightGrayBG)
                        .frame(width: 50, height: 30, alignment: .center)
                    Image("visa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 30, alignment: .center)
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("VISA Classic")
                        .font(.system(size: 18, weight: .semibold, design: .default))
                    Text("****-0921")
                        .foregroundColor(.appLightGrayText)
                        .font(.system(size: 14, weight: .medium, design: .default))
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.appDarkBG)
                    .frame(width: 20, height: 20, alignment: .center)
            }
        }
    }
}
