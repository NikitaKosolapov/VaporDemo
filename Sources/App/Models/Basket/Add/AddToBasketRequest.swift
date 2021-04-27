//
//  AddToBasketRequest.swift
//  
//
//  Created by Nikita on 27.04.2021.
//

import Vapor

struct AddToBasketRequest: Content {
    var id_product: Int
    var quantity: Int
}
