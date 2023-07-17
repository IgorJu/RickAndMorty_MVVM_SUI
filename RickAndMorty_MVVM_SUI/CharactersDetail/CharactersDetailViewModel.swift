//
//  CharactersDetailViewModel.swift
//  RickAndMorty_MVVM_SUI
//
//  Created by Igor on 14.07.2023.
//

import SwiftUI

class CharacterDetailsViewModel: ObservableObject {
    
    private let character: Personage
    
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
    
    var imageURL: URL {
        character.image
    }
    
    init(character: Personage) {
        self.character = character
    }
}
            





