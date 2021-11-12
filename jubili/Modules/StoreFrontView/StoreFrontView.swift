//
//  StoreFrontView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/12/21.
//

import SwiftUI

struct StoreFrontView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    HeaderView()
                    SubHeaderView(title: "Hi-Fi Shop & Services",
                                  address: "Audio shop on Rustaveli Ave 57.",
                                  subTitle: "This shop offers both products and services")
                }
            }
        }
    }
}
