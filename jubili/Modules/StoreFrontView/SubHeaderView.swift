//
//  SubHeaderView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/12/21.
//

import SwiftUI

struct SubHeaderView: View {
    
    let title: String
    let address: String
    let subTitle: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .font(.system(size: 22, weight: .semibold, design: .default))
            VStack(alignment: .leading, spacing: 10) {
                Text(address)
                    .font(.system(size: 15, weight: .medium, design: .default))
                    .foregroundColor(.appLightGrayText)
                Text(subTitle)
                    .font(.system(size: 15, weight: .medium, design: .default))
                    .foregroundColor(.appLightGrayText)
            }
        }
        .offset(x: 0, y: 16)
        .padding(.horizontal)
    }
}
