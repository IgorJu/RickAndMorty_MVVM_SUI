//
//  CharacterListViewModel.swift
//  RickAndMorty_MVVM_SUI
//
//  Created by Igor on 14.07.2023.
//

import SwiftUI

class CharacterListViewModel: ObservableObject {
    @Published var rows: [CharacterDetailsViewModel] = []
    
    func fetchCharacters() async {
        do {
            let characters = try await NetworkManager.shared.fetchCharacters()
            await MainActor.run {
                self.rows = characters.map { CharacterDetailsViewModel(character: $0) }
            }
        } catch {
            print(error)
        }
    }
}

