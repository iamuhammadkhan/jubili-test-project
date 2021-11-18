//
//  CategoryModel.swift
//  jubili
//
//  Created by Muhammad Khan on 11/16/21.
//

import Foundation

struct CategoryModel:Identifiable {
    let id = UUID()
    let categoryName: CategoryType
    let numberOfProducts: Int
    let products: [ProductModel]
}

enum CategoryType: String {
    case products
    case accessories
}
