//
//  File.swift
//  
//
//  Created by Nikita on 22.04.2021.
//

import Vapor

struct WriteReviewRequest: Content {
    let id_user: Int
    let text: String
}
