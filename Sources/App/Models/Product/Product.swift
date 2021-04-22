//
//  File.swift
//  
//
//  Created by Nikita on 22.04.2021.
//

import Vapor

struct Product: Content {
    let id_product: Int
    let product_name: String
    let price: Int
}
