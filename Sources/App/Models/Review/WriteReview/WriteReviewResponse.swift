//
//  File.swift
//  
//
//  Created by Nikita on 22.04.2021.
//

import Vapor

struct WriteReviewResponse: Content {
    let result: Int
    let userMessage: String
}
