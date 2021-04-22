//
//  File.swift
//  
//
//  Created by Nikita on 15.04.2021.
//

import Vapor

struct UserModel: Content {
    let id_user: Int
    let user_login: String
    let user_name: String
    let user_lastname: String
}
