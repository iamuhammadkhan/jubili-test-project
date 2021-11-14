//
//  ProductView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/12/21.
//

import SwiftUI

struct ProductView: View {
    
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    @Environment(\.presentationMode) private var presentation

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(colorScheme == .dark ? .appDarkGrayBG : .appLightGrayBG)
                    .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight / 2, alignment: .top)
                    .edgesIgnoringSafeArea(.top)
                VStack(alignment: .center, spacing: 0) {
                    HeaderView(showSearchButton: false, backButtonAction: moveBack, searchButtonAction: nil)
                    Image("5")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.screenWidth / 1.2, height: UIScreen.screenWidth / 1.2, alignment: .center)
                }
            }
            Spacer()
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
    
    private func moveBack() {
        presentation.wrappedValue.dismiss()
    }
}
