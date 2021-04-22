//
//  File.swift
//  
//
//  Created by Nikita on 15.04.2021.
//

import Vapor

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
