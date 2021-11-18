//
//  UIApplication+Extension.swift
//  jubili
//
//  Created by Muhammad Khan on 11/19/21.
//

import UIKit

extension UIApplication {
    class func getStatusBarHeight() -> CGFloat {
        return (UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.height ?? 44)
    }
}
