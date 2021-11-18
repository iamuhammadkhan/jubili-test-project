//
//  ProductDetailsTopView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/15/21.
//

import SwiftUI

struct ProductDetailsTopView: View {
    
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    let productImages: [ProductImage]
    
    var body: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(colorScheme == .dark ? .appDarkGrayBG : .appLightGrayBG)
                .edgesIgnoringSafeArea(.top)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ImageCarouselView(productImages: productImages)
                }
            }
        }.frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight / 2.2, alignment: .top)
    }
}
