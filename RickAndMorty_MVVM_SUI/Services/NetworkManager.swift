//
//  NetworkManager.swift
//  RickAndMorty_MVVM_SUI
//
//  Created by Igor on 14.07.2023.
//

import SwiftUI

enum API: String {
    case personageURL = "https://rickandmortyapi.com/api/character"
}

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

final class NetworkManager {
    static let shared = NetworkManager()
    
    private init () {}
    
    //MARK: - Fetch Methods    
    func fetchCharacters() async throws -> [Personage] {
        guard let url = URL(string: API.personageURL.rawValue) else {
            throw NetworkError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        guard let characters = try? decoder.decode(RickAndMorty.self, from: data) else {
            throw NetworkError.decodingError
        }
        return characters.results
    }
}
            
      
