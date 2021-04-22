//
//  File.swift
//  
//
//  Created by Nikita on 22.04.2021.
//

import Vapor

struct ProductRequest: Content {
    let page_number: Int
    let id_category: Int
}
