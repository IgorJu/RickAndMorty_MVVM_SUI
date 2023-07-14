//
//  CharacterListView.swift
//  RickAndMorty_MVVM_SUI
//
//  Created by Igor on 14.07.2023.
//

import SwiftUI

struct CharacterListView: View {
    @StateObject private var viewModel = CharacterListViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.rows, id: \.name) { characterDetailsViewModel in
                NavigationLink(destination: CharacterDetailsView(viewModel: characterDetailsViewModel)) {
                    RowView(viewModel: characterDetailsViewModel)
                }
            }
            .navigationTitle("Rick and Morty")
        }
        .task {
            await viewModel.fetchCharacters()
        }
    }
}

struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView()
    }
}
