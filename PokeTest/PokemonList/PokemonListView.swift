//
//  PokemonListView.swift
//  PokeAPI
//
//  Created by Francisco Aguirre San Román on 20/05/25.
//

import SwiftUI

struct PokemonListView: View {
    
    @State var viewModel = PokemonListViewModel()
    @State var showAlert: Bool = false
    
    
    var body: some View {
        NavigationStack {
            List(viewModel.pokemons) { pokemon in
                
                PokemonListRowView(pokemon: pokemon)
                    
            }
            .alert("Error!", isPresented: $showAlert) {
                Button {
                    print("OK")
                } label: {
                    Text("OK")
                }

            }

        }
        .task {
            do {
                try await viewModel.requestPokemons()
            } catch {
                showAlert.toggle()
            }
        }

    }
}

