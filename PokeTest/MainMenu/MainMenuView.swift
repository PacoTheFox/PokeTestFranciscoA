//
//  MainMenuView.swift
//  PokeAPI
//
//  Created by Francisco Aguirre San Román on 20/05/25.
//

import SwiftUI

struct MainMenuView: View {
    @State var viewModel = MainMenuViewModel()
    
    var body: some View {
        NavigationStack {
            TabView {
                PokemonListView()
                    .tabItem {
                        Image(systemName: "person.circle")
                        Text("Pokemones")
                    }
                
                MainMenuPokemonView()
                    .tabItem {
                        Image(systemName: "plus")
                        Text("Nuevo Pokemon")
                    }
            }
            .navigationTitle(Text("PokeAPI"))
            .tint(.red)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Settings", systemImage: "gearshape.fill") {
                        print("Navigating to settings...")
                    }
                    .buttonStyle(.plain)
                    .foregroundColor(.red)
                }
            }
        }


        
    }
}




struct MainMenuPokemonView: View {
    var body: some View {
        Text("New, World!")
    }
}

#Preview {
    MainMenuView()
}
