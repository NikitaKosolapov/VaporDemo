//
//  File.swift
//  
//
//  Created by Nikita on 22.04.2021.
//

import Vapor

struct ProductByIdResponse: Content {
    let result: Int
    let product_name: String
    let product_price: Int
    let product_description: String
}
