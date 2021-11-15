//
//  ProductDetailsLocationView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/15/21.
//

import SwiftUI

struct ProductDetailsLocationView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.appLightGrayBG)
                    .frame(width: 40, height: 40, alignment: .center)
                Image(systemName: "location.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.appBlue)
                    .frame(width: 20, height: 20, alignment: .center)
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("Rustaveli Ave 57,")
                    .foregroundColor(.appLightGrayText)
                    .font(.system(size: 14, weight: .medium, design: .default))
                Text("17-001, Batumi")
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
