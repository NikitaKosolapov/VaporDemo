//
//  File.swift
//  
//
//  Created by Nikita on 15.04.2021.
//

import Vapor

struct EditUserDataResponse: Content {
    var result: Int
    var error_message: String?
}
