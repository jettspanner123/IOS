//
//  ProductModel.swift
//  todo_application
//
//  Created by student on 12/08/24.
//

import SwiftUI

struct ProductModel: Identifiable {
    var id: UUID = .init()
    var name: String = ""
    var price: Int64
    var color: String
    var category: [String]
}


var Products: [ProductModel] = [

    ProductModel(name: "Shoes", price: 1000, color: "RedLight", category: ["All", "Shoes"]),
    ProductModel(name: "Medical Kit", price: 2000, color: "GreenLight", category: ["All", "Medical"]),
    ProductModel(name: "Something", price: 3000, color: "PurpleLight", category: ["All", "Something"]),

]
