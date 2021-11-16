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
    
    
}
