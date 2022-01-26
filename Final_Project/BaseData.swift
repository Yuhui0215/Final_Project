//
//  DataBase.swift
//  Final_Project
//
//  Created by User08 on 2022/1/26.
//

import Foundation

struct BaseData: Codable {
    let ingredients: [StoreItemBase]
}

struct StoreItemBase: Codable {
    let idIngredient: String
    let strIngredient: String
    let strDescription: String
    let strType: String
    let strAlcohol: String
    let strABV: String
}
