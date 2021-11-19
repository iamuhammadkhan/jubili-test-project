//
//  CartManager.swift
//  jubili
//
//  Created by Muhammad Khan on 11/19/21.
//

import SwiftUI

final class CartManager: NSObject {

    private lazy var cart: CartModel? = nil
    private static var singleton: CartManager?
    private override init() { }
    
    static var shared: CartManager {
        if CartManager.singleton == nil {
            CartManager.singleton = CartManager()
        }
        let lock = DispatchQueue(label: "CartManager")
        return lock.sync { return CartManager.singleton! }
    }
    
    func getCurrentCart() -> CartModel {
        if let cart = cart {
            return cart
        }
        return CartModel(products: [], shippingCost: 0)
    }
    
    func createCart(_ product: ProductModel) {
        cart = CartModel(products: [product], shippingCost: 10)
    }
    
    func calculateFinalPriceWithoutCost() -> Int {
        var price = 0
        for item in cart?.products ?? [] {
            price += item.calculateFinalPrice()
        }
        return price
    }
    
    func calculateFinalPriceWithCost() -> Int {
        let shippingCost = cart?.shippingCost ?? 0
        var price = calculateFinalPriceWithoutCost()
        price += shippingCost
        return price
    }
    
    func updateCart(_ product: ProductModel) {
        if let cart = cart {
            if cart.products.contains(where: { $0.id == product.id }) {
                return
            } else {
                self.cart?.products.append(product)
            }
        } else {
            createCart(product)
        }
    }
}
