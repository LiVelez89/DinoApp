//
//  NetworkManager.swift
//  MyTestApp
//
//  Created by Lina on 9/03/23.
//

import Foundation

struct Constants {
    
    static let baseURL = "https://dinosaur-facts-api.shultzlab.com/dinosaurs"
//  static let imageURL = ""
}

enum APIError: Error {
    case failedToGetData
    case badUrl
    case failedToDecodeData
}

struct NetworkManager {
    func makeRequest<T: Decodable>(type: T.Type, completion: @escaping (Result<T, APIError>) -> Void) {
     
        guard let url = URL(string: Constants.baseURL) else {
            completion(.failure(APIError.badUrl))
            return
        }
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: url) { (data, _, error) in
            guard let data = data, error == nil else {
                completion(.failure(APIError.failedToGetData))
                return
            }
            do {
                let results = try JSONDecoder().decode(type, from: data)
                completion(.success(results))
            } catch {
                completion(.failure(APIError.failedToDecodeData))
            }
        }
        task.resume()
    }
}
