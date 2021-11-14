//
//  HeaderView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/12/21.
//

import SwiftUI

struct HeaderView: View {
    
    let showSearchButton: Bool
    let backButtonAction: (() -> ())?
    let searchButtonAction: (() -> ())?
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            HeaderButtonView(strokeColor: .clear,
                             cornerRadius: 14,
                             backgroundColor: colorScheme == .dark ? .appDarkBG : .appLightGrayBG,
                             imageHeight: 16,
                             imageWidth: 8,
                             image: Image(systemName: "chevron.left"))
                .onTapGesture {
                    backButtonAction?()
                }
            Spacer()
            if showSearchButton {
                HeaderButtonView(strokeColor: colorScheme == .dark ? .appDarkGrayBG : .appLightGrayBG,
                                 cornerRadius: 14,
                                 backgroundColor: .clear,
                                 imageHeight: 16,
                                 imageWidth: 16,
                                 image: Image(systemName: "magnifyingglass"))
                    .onTapGesture {
                        searchButtonAction?()
                    }
            }
        }
        .padding(.horizontal)
        .padding(.top, 8)
    }
}
