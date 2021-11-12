//
//  HeaderView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/12/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            HeaderButtonView(strokeColor: .clear,
                             cornerRadius: 14,
                             backgroundColor: .appLightGrayBG,
                             imageHeight: 16,
                             imageWidth: 8,
                             image: Image(systemName: "chevron.left"))
            Spacer()
            HeaderButtonView(strokeColor: .appLightGrayBG,
                             cornerRadius: 14,
                             backgroundColor: .clear,
                             imageHeight: 16,
                             imageWidth: 16,
                             image: Image(systemName: "magnifyingglass"))
        }
        .padding()
    }
}
