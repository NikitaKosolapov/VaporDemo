//
//  File.swift
//  
//
//  Created by Nikita on 27.04.2021.
//

import Vapor

class BasketApiLibrary {
    func addToBasket(_ req: Request) throws -> EventLoopFuture<AddToBasketResponse> {
        guard let body = try? req.content.decode(AddToBasketRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = AddToBasketResponse(result: 1)

        return req.eventLoop.future(response)
    }

    func deleteFromBasket(_ req: Request) throws -> EventLoopFuture<DeleteFromBasketResponse> {
        guard let body = try? req.content.decode(DeleteFromBasketRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = DeleteFromBasketResponse(result: 1)

        return req.eventLoop.future(response)
    }

    func getBasket(_ req: Request) throws -> EventLoopFuture<GetbasketResponse> {
        guard let body = try? req.content.decode(GetBasketRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = GetbasketResponse(amount: 2, countGoods: 1, contents: [
            Product(id_product: 155, product_name: "мышь", price: 1200, quantity: 1),
            Product(id_product: 175, product_name: "клавиатура", price: 1500, quantity: 2)
        ])

        return req.eventLoop.future(response)
    }
}
