//
//  CartModel.swift
//  jubili
//
//  Created by Muhammad Khan on 11/16/21.
//

import Foundation

struct CartModel: Identifiable {
    var products: [ProductModel]
    let shippingCost: Int
    let id = UUID()
}
