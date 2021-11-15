//
//  FlatBlueButton.swift
//  jubili
//
//  Created by Muhammad Khan on 11/15/21.
//

import SwiftUI

struct FlatBlueButton: View {
    
    let buttonText: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.appBlue)
                .frame(width: UIScreen.screenWidth - 32, height: 60, alignment: .center)
            Text(buttonText)
                .foregroundColor(.white)
                .font(.system(size: 14, weight: .medium, design: .default))
        }
    }
}
