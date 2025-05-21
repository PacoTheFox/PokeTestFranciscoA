//
//  PokemonListViewModel.swift
//  PokeAPI
//
//  Created by Francisco Aguirre San Román on 20/05/25.
//

import Foundation
import Observation


@Observable
final class PokemonListViewModel {
    
    var pokemons: [Pokemon] = []
    
    
    let urlForPokemons: URL = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=151")!
    
    
    func requestPokemons() async throws {
        let(data, _) = try await URLSession.shared.data(from: urlForPokemons)
        
        let decoded = try JSONDecoder().decode(PokemonRequestWrapper.self, from: data)
        
        self.pokemons = decoded.results
        
        getIndex()
    }
    
    
    func getIndex() {
        
        
        for i in 0..<pokemons.count {
            pokemons[i].index = i + 1
        }

    }
}
