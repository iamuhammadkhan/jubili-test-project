//
//  CartModel.swift
//  jubili
//
//  Created by Muhammad Khan on 11/16/21.
//

import Foundation

struct CartModel: Identifiable {
    let id = UUID()
    let products: [ProductModel]
    let subTotal: Double
    let shippingCost: Double
    let positiveShippingCost: Bool
    let totalCost: Double
}
