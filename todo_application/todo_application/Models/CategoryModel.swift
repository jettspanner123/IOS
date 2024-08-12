//
//  CategoryModel.swift
//  todo_application
//
//  Created by student on 12/08/24.
//

import SwiftUI

struct CategoryModel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
}


var categoryList: [CategoryModel] = [
    CategoryModel(icon: "", title: "All"),
    CategoryModel(icon: "cup.and.saucer.fill", title: "Coffee"),
    CategoryModel(icon: "cross.case.fill", title: "Medical"),
    CategoryModel(icon: "bolt.fill", title: "Toffee"),
    CategoryModel(icon: "person.circle.fill", title: "Person Service"),
]

