import Foundation

struct News: Decodable {
    let totalResults: Int
    let articles: [Article]
}

struct Article: Decodable {
    let author: String?
    let title: String
    let description: String
    let urlToImage: String?
    let publishedAt: String
    let content: String
}
