//
//  PokemonListRowView.swift
//  PokeAPI
//
//  Created by Francisco Aguirre San Román on 20/05/25.
//

import SwiftUI

struct PokemonListRowView: View {
    var pokemon: Pokemon
    
    var body: some View {
        HStack {
            AsyncImage(url: pokemon.spriteURL)  { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipped()
            } placeholder: {
                ProgressView()
                    .frame(width: 50, height: 50)
            }
            
            NavigationLink(pokemon.capitalizedName) {
                PokemonDetailView(viewModel: PokemonDetailViewModel(pokemonURL: URL(string: pokemon.url)), pokemon: pokemon)
            }
        }
    }
}


