//
//  PokemonDetailView.swift
//  PokeAPI
//
//  Created by Francisco Aguirre San Román on 20/05/25.
//

import SwiftUI

struct PokemonDetailView: View {
    @ObservedObject var viewModel: PokemonDetailViewModel
    
    var pokemon: Pokemon
    
    var body: some View {
        VStack {
            Text(pokemon.capitalizedName)
            AsyncImage(url: pokemon.spriteURL) { image in
                image
                    .resizable()
                    .interpolation(.none)
                    .scaledToFit()
                    .frame(width: 500, height: 500)
                    .clipped()
            } placeholder: {
                ProgressView()
            }
            
            Text("Height")
                .bold()
                .font(.headline)
            Text(viewModel.pokemonDetail?.height.description ?? "Error Loading Height")
            Spacer()
        
            Text("Abilities")
                .bold()
                .font(.headline)
            HStack {
                ForEach(viewModel.pokemonDetail?.abilities ?? []) { ability in
                    
                    Text(ability.ability.name.capitalizingFirstLetter())
                    
                }
            }
            Spacer()
            
            
        }
        .task {
            do {
               try await viewModel.getPokemonDetail()
            } catch {
                print("Error again")
                print(error)
            }
        }
    }
}



