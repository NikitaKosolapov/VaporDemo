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

        let userModel = UserModel(id_user: 434,
                                  user_login: "NK",
                                  user_name: "Nikita",
                                  user_lastname: "Kosolapov")

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

    func getProductCatalog(_ req: Request) throws -> EventLoopFuture<[Product]> {
        guard let body = try? req.content.decode(ProductRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = [Product(id_product: 1315324, product_name: "iMac M1 24", price: 169990),
                        Product(id_product: 3532311, product_name: "Mac mini M1", price: 118990),
                        Product(id_product: 3145114, product_name: "MacBook Pro 13 M1", price: 159990)]

        return req.eventLoop.future(response)
    }

    func getProductById(_ req: Request) throws -> EventLoopFuture<ProductListResponse> {
        guard let body = try? req.content.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = ProductListResponse(result: 1, product_name: "iMac M1 24", product_price: 169990, product_description: "")

        return req.eventLoop.future(response)
    }
}
