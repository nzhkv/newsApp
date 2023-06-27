import Foundation

struct News {
    let totalResults: Int
    let articles: [Article]
}

struct Article {
    let author: String?
    let title: String
    let description: String
    let urlToImage: String?
    let publishedAt: String
    let content: String
}
