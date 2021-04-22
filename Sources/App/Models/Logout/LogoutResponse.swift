//
//  File.swift
//  
//
//  Created by Nikita on 15.04.2021.
//

import Vapor

struct LogoutResponse: Content {
    let result: Int
    let error_message: String?
}
