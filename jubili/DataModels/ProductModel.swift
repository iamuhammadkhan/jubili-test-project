//
//  ProductModel.swift
//  jubili
//
//  Created by Muhammad Khan on 11/16/21.
//

import Foundation

struct ProductModel: Identifiable {
    let id = UUID()
    let productNumber: String
    let productSpeciality: String
    let productPrice: Double
    let productTaxRate: Double
    let productImages: [ProductImage]
    let availabilityStatus: AvailabilityType
    let productLink: String
    
    func calculateTax() -> Double {
        let value = productPrice / 100 * productTaxRate
        return value
    }
    
    func calculateFinalPrice() -> Int {
        let tax = calculateTax()
        return Int((productPrice + tax).rounded())
    }
}
