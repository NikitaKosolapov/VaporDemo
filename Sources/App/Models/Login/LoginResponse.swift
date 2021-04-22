//
//  File.swift
//  
//
//  Created by Nikita on 15.04.2021.
//

import Vapor

struct LoginResponse: Content {
    let result: Int
    let user: UserModel?
    let error_message: String?
}
