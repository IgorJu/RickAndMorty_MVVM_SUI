//
//  RowView.swift
//  RickAndMorty_MVVM_SUI
//
//  Created by Igor on 14.07.2023.
//

import SwiftUI

struct RowView: View {
    let viewModel: CharacterDetailsViewModel
    
    var body: some View {
        HStack {
            AsyncImage(url: viewModel.imageURL) { image in
                image
                    .resizable()
                    .frame(width: 80, height: 80)
                    .cornerRadius(100)
            } placeholder: {
                Image(systemName: "xmark.seal.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
            }
            Text(viewModel.name)
        }
    }
}

//struct RowView_Previews: PreviewProvider {
//    static var previews: some View {
//        RowView(viewModel: CharacterDetailsViewModel(character: Personage))
//    }
//}
