//
//  Network.swift
//  newsApp
//
//  Created by Nikolay Zhukov on 27.06.2023.
//

import Foundation

class NetworkManager {
    func fetchNews(completion: @escaping ([News]?) -> Void) {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=7583e2f26bf04020a773632b59fa8b81") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                print("Ошибка при получении")
                completion(nil)
                return
            }
            
            guard let data = data else {
                completion(nil)
                return
            }
            
            do {
                let news = try JSONDecoder().decode([News].self, from: data)
                completion(news)
            } catch {
                print("ошибка при декодировании")
                completion(nil)
            }
        }.resume()
    }
}
