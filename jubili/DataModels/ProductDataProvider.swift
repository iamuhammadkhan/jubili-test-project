//
//  ProductDataProvider.swift
//  jubili
//
//  Created by Muhammad Khan on 11/16/21.
//

import Foundation

final class ProductDataProvider: NSObject {
    
    private static var singleton: ProductDataProvider?
    private override init() { }
    
    static var shared: ProductDataProvider {
        if ProductDataProvider.singleton == nil {
            ProductDataProvider.singleton = ProductDataProvider()
        }
        let lock = DispatchQueue(label: "ProductDataProvider")
        return lock.sync { return ProductDataProvider.singleton! }
    }
    
    func getCategoriesData() -> [CategoryModel] {
        let products = gatherProductsList()
        let accessories = gatherAccessoriesList()
        let first = CategoryModel(categoryName: .products, numberOfProducts: products.count, products: products)
        let second = CategoryModel(categoryName: .accessories, numberOfProducts: accessories.count, products: accessories)
        return [first, second]
    }
    
    private func gatherProductsList() -> [ProductModel] {
        let first = ProductModel(productNumber: "AI TMA-2 N700NCM2", productSpeciality: "Modular Headphones", productPrice: 245, productTaxRate: 2, productImages: [ProductImage(imageName: "1"), ProductImage(imageName: "2"), ProductImage(imageName: "3")], availabilityStatus: .none, productLink: "Product link will go here")
        let second = ProductModel(productNumber: "AKG N700NCM2", productSpeciality: "Wireless Headphones", productPrice: 195, productTaxRate: 2, productImages: [ProductImage(imageName: "4"), ProductImage(imageName: "5")], availabilityStatus: .none, productLink: "Product link will go here")
        return [first, second]
    }
    
    private func gatherAccessoriesList() -> [ProductModel] {
        let first = ProductModel(productNumber: "AKG H890", productSpeciality: "3.5mm Jack Handsfree", productPrice: 147, productTaxRate: 2, productImages: [ProductImage(imageName: "6"), ProductImage(imageName: "7")], availabilityStatus: .none, productLink: "Product link will go here")
        let second = ProductModel(productNumber: "AKG H1290", productSpeciality: "3.5mm Jack Handsfree", productPrice: 145, productTaxRate: 2, productImages: [ProductImage(imageName: "8"), ProductImage(imageName: "9"), ProductImage(imageName: "10")], availabilityStatus: .none, productLink: "Product link will go here")
        return [first, second]
    }
}
