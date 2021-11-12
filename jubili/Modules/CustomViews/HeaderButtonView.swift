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
    let imageHeight: CGFloat
    let imageWidth: CGFloat
    let image: Image
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(backgroundColor)
                .frame(width: 40, height: 40)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(strokeColor, lineWidth: 2)
                )
            image
                .resizable()
                .frame(width: imageWidth, height: imageHeight)
                
        }
    }
}
