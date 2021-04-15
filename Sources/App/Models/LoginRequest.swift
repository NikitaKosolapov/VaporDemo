//
//  File.swift
//  
//
//  Created by Nikita on 15.04.2021.
//

import Vapor

struct LoginRequest: Content {
    let username: String
    let password: String
}
