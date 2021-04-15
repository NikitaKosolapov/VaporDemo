//
//  File.swift
//  
//
//  Created by Nikita on 15.04.2021.
//

import Vapor

struct EditUserDataRequest: Content {
    var id_user: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
