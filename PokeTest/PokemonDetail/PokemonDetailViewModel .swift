//
//  PokemonDetailViewModel 2.swift
//  PokeAPI
//
//  Created by Francisco Aguirre San Román on 21/05/25.
//

import Foundation

class PokemonDetailViewModel: ObservableObject{
    
    @Published var pokemonDetail: PokemonDetailModel?
    var pokemonURL: URL?
    
    init(pokemonURL: URL?) {
        self.pokemonURL = pokemonURL
    }
    
    func getPokemonDetail() async throws {
        if let url = pokemonURL {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decoded = try JSONDecoder().decode(PokemonDetailModel.self, from: data)
            await updateDetail(decoded)
        }
    }
    
    
    @MainActor
    private func updateDetail(_ detail: PokemonDetailModel) {
        self.pokemonDetail = detail
    }
    
}
