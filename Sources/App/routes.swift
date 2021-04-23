import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }

    let authApiLibrary = AuthApiLibrary()
    app.post("register", use: authApiLibrary.register)
    app.post("editUserData", use: authApiLibrary.editUserData)
    app.post("login", use: authApiLibrary.login)
    app.post("logout", use: authApiLibrary.logout)

    let productApiLibrary = ProductApiLibrary()
    app.post("getProductCatalog", use: productApiLibrary.getProductCatalog)
    app.post("getProductById", use: productApiLibrary.getProductById)

    let reviewApiLibrary = ReviewApiLibrary()
    app.post("writeReview", use: reviewApiLibrary.writeReview)
    app.post("approveReview", use: reviewApiLibrary.approveReview)
    app.post("removeReview", use: reviewApiLibrary.removeReview)
}
