//
//  File.swift
//  
//
//  Created by Nikita on 22.04.2021.
//

import Vapor

class ProductApiLibrary {
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

    func getProductById(_ req: Request) throws -> EventLoopFuture<ProductByIdResponse> {
        guard let body = try? req.content.decode(ProductByIdRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = ProductByIdResponse(result: 1, product_name: "iMac M1 24", product_price: 169990, product_description: "")

        return req.eventLoop.future(response)
    }
}
