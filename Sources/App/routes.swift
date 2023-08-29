import Vapor

func routes(_ app: Application) throws {
    
    // /movies
    // /movies/id
    
    let movies = app.grouped("movies")
    
    // /movies
    movies.get { req async in
        return "Movies"
    }
    
    // /movies/id
    movies.get(":movieId") { req async throws -> String in
        guard let movieId = req.parameters.get("movieId") else {
            throw Abort(.badRequest)
        }
        return "Movie \(movieId)"
    }
    
    let users = app.grouped("users")
    
    users.get("prenium") { req async throws -> String in
        return "Prenium"
    }
    
}
