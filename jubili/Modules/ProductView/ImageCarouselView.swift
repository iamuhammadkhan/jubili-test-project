//
//  ImageCarouselView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/19/21.
//

import SwiftUI

struct ImageCarouselView: View {
    
    let productImages: [ProductImage]
    
    var body: some View {
        TabView {
            ForEach(productImages, id: \.id) { productImage in
                Image(productImage.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth / 1.4, alignment: .center)
            }
        }
        .frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth)
        .tabViewStyle(PageTabViewStyle())
    }
}
