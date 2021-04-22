//
//  File.swift
//  
//
//  Created by Nikita on 22.04.2021.
//

import Vapor

class ReviewApiLibrary {
    func writeReview(_ req: Request) throws -> EventLoopFuture<WriteReviewResponse> {
        guard let body = try? req.content.decode(WriteReviewRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = WriteReviewResponse(result: 1, userMessage: "Отзыв успешно опубликован")

        return req.eventLoop.future(response)
    }

    func approveReview(_ req: Request) throws -> EventLoopFuture<ApproveReviewResponse> {
        guard let body = try? req.content.decode(ApproveReviewRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = ApproveReviewResponse(result: 1)

        return req.eventLoop.future(response)
    }

    func removeReview(_ req: Request) throws -> EventLoopFuture<RemoveReviewResponse> {
        guard let body = try? req.content.decode(RemoveReviewRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = RemoveReviewResponse(result: 1)

        return req.eventLoop.future(response)
    }
}
