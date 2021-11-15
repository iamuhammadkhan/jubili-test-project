//
//  CartButtonView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/15/21.
//

import SwiftUI

struct CartButtonView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Button {
                // Action will go here
            } label: {
                HStack(alignment: .center, spacing: 8) {
                    Image(systemName: "cart.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(.appBlue)
                    Text("Shopping")
                        .foregroundColor(.appBlue)
                        .font(.system(size: 14, weight: .medium, design: .default))
                }
            }
            Spacer()
        }
    }
}
