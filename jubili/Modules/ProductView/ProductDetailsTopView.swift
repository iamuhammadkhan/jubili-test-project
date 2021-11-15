//
//  ProductDetailsTopView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/15/21.
//

import SwiftUI

struct ProductDetailsTopView: View {
    
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    
    let backButtonAction: (() -> ())?
    
    var body: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(colorScheme == .dark ? .appDarkGrayBG : .appLightGrayBG)
                .edgesIgnoringSafeArea(.top)
            VStack(alignment: .center, spacing: -32) {
                HeaderView(showSearchButton: false, backButtonAction: backButtonAction, searchButtonAction: nil)
                Image("5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.screenWidth / 1.2, height: UIScreen.screenWidth / 1.2, alignment: .center)
            }
        }.frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight / 2.4, alignment: .top)
    }
}
