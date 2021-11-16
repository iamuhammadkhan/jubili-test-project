//
//  ProductModel.swift
//  jubili
//
//  Created by Muhammad Khan on 11/16/21.
//

import Foundation

struct ProductModel {
    let productNumber: String
    let productSpeciality: String
    let productPrice: Double
    let productTaxRate: Double
    let productTax: Double
    let productImages: [String]
    let availabilityStatus: AvailabilityType
    let productLink: String
    
    func calculateTax() -> Double {
        let value = productPrice / 100 * productTaxRate
        return value.rounded()
    }
    
    func calculateFinalPrice() -> Double {
        let tax = calculateTax()
        return productPrice + tax
    }
}
