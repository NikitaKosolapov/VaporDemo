//
//  File.swift
//  
//
//  Created by Nikita on 27.04.2021.
//

import Vapor

struct GetbasketResponse: Content {
    var amount: Int
    var countGoods: Int
    var contents: [Product]
}
