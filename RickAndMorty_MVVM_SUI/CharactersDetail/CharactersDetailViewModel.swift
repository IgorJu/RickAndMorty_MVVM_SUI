//
//  CharactersDetailViewModel.swift
//  RickAndMorty_MVVM_SUI
//
//  Created by Igor on 14.07.2023.
//

import SwiftUI

class CharacterDetailsViewModel: ObservableObject {
    var name: String {
        character.name
    }
    var gender: String {
        character.gender
    }
    
    var species: String {
        character.species
    }
    
    var status: String {
        character.status
    }
    
    var imageData: Data {
        var imageData = Data()
        
        do {
            imageData = try NetworkManager.shared.fetchImageData(from: character.image.formatted())
        } catch {
            print(error)
        }
        return imageData
    }
    
    private let character: Personage
    
    init(character: Personage) {
        self.character = character
    }
}
