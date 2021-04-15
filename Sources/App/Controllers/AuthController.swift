//
//  File.swift
//  
//
//  Created by Nikita on 15.04.2021.
//

import Vapor

class AuthController {
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = RegisterResponse(
            result: 1,
            user_message: "Регистрация прошла успешно!",
            error_message: nil
        )

        return req.eventLoop.future(response)
    }

    func editUserData(_ req: Request) throws -> EventLoopFuture<EditUserDataResponse> {
        guard let body = try? req.content.decode(EditUserDataRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = EditUserDataResponse(
            result: 1,
            error_message: nil
        )

        return req.eventLoop.future(response)
    }

    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let userModel = UserModel(id_user: 123,
                                  user_login: "geekbrains",
                                  user_name: "John",
                                  user_lastname: "Doe")

        let response = LoginResponse(result: 1,
                                     user: userModel,
                                     error_message: nil)

        return req.eventLoop.future(response)
    }

    func logout(_ req: Request) throws -> EventLoopFuture<LogoutResponse> {
        guard let body = try? req.content.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = LogoutResponse(result: 1,
                                     error_message: nil)

        return req.eventLoop.future(response)
    }
}
