//
//  ContentView.swift
//  RickAndMorty_MVVM_SUI
//
//  Created by Igor on 14.07.2023.
//

import SwiftUI

struct MainView: View {
    @State private var showCharacterList = false
    
    var body: some View {
        ZStack {
            Image("RickMorty")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack {
                Button("Show Personages") {
                    showCharacterList.toggle()
                }
                .frame(width: 280, height: 50)
                .foregroundColor(.yellow)
                .font(.title)
                .background(.secondary)
                .cornerRadius(12)
                .padding(.top)
                Spacer()
            }
        }
        .fullScreenCover(isPresented: $showCharacterList) {
            CharacterListView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
