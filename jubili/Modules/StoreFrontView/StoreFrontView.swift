//
//  StoreFrontView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/12/21.
//

import SwiftUI

struct StoreFrontView: View {
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0) {
                HeaderView(showSearchButton: true, backButtonAction: nil, searchButtonAction: nil)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 30) {
                        SubHeaderView(title: "Hi-Fi Shop & Services",
                                      address: "Audio shop on Rustaveli Ave 57.",
                                      subTitle: "This shop offers both products and services",
                                      showLinkView: false, headingFontSize: 22)
                        ProductCarouselView()
                        ProductCarouselView()
                        ProductCarouselView()
                    }
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .buttonStyle(FlatLinkStyle())
    }
}
