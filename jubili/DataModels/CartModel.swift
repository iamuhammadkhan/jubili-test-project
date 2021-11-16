//
//  CartModel.swift
//  jubili
//
//  Created by Muhammad Khan on 11/16/21.
//

import Foundation

struct CartModel {
    let products: [ProductModel]
    let deliveryAddress: UserAddressModel
    let paymentMethod: PaymentMethodModel
    let subTotal: Double
    let shippingCost: Double
    let positiveShippingCost: Bool
    let totalCost: Double
}
