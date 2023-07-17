//
//  CharacterDetailsView.swift
//  RickAndMorty_MVVM_SUI
//
//  Created by Igor on 14.07.2023.
//

import SwiftUI

struct CharacterDetailsView: View {
    @StateObject var viewModel: CharacterDetailsViewModel
    var body: some View {
        ZStack {
            Image("RM")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack(spacing: 20){
                Text(viewModel.name)
                    .bold()
                    .font(.largeTitle)
                AsyncImage(url: viewModel.imageURL) { image in
                    image
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(100)
                } placeholder: {
                    Image(systemName: "xmark.seal.fill")
                        .resizable()
                        .frame(width: 200, height: 200)
                }
                Text("Status: \(viewModel.status)")
                Text("Gender: \(viewModel.gender)")
                Text("Species: \(viewModel.species)")
                
                Spacer()
            }
        }
    }
}


//struct CharacterDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//      //  CharacterDetailsView(viewModel: CharacterDetailsViewModel(character: Personage))
//    }
//}
