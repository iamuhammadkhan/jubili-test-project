//
//  HeaderButtonView.swift
//  jubili
//
//  Created by Muhammad Khan on 11/12/21.
//

import SwiftUI

struct HeaderButtonView: View {
    
    let strokeColor: Color
    let cornerRadius: CGFloat
    let backgroundColor: Color
    let height: CGFloat
    let width: CGFloat
    let image: Image
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(backgroundColor)
                .frame(width: width, height: height)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(strokeColor, lineWidth: 2)
                )
            image
                .resizable()
                .scaledToFit()
                .frame(width: width / 2.5, height: height / 2.5)
                
        }
    }
}
