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
    let showLinkView: Bool
    let headingFontSize: CGFloat
    
    @State private var showingAlert = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            if showLinkView {
                HStack(alignment: .center, spacing: 20) {
                    Text(title)
                        .font(.system(size: headingFontSize, weight: .semibold, design: .default))
                    Spacer()
                    ZStack {
                        Circle()
                            .foregroundColor(.appLighterBlue)
                            .frame(width: 50, height: 50, alignment: .center)
                        Button {
                            UIPasteboard.general.string = "Text from Jubili app"
                            showingAlert = true
                        } label: {
                            Image(systemName: "link")
                                .foregroundColor(.appBlue)
                                .frame(width: 30, height: 30, alignment: .center)
                        }
                        .alert("Link copied to clipboard", isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        }
                    }
                }
            } else {
                Text(title)
                    .font(.system(size: headingFontSize, weight: .semibold, design: .default))
            }
            VStack(alignment: .leading, spacing: 10) {
                Text(address)
                    .font(.system(size: 15, weight: .medium, design: .default))
                    .foregroundColor(.appLightGrayText)
                Text(subTitle)
                    .font(.system(size: 15, weight: .medium, design: .default))
                    .foregroundColor(.appLightGrayText)
            }
        }
        .offset(x: 0, y: showLinkView ? -8 : 20)
        .padding()
    }
}
