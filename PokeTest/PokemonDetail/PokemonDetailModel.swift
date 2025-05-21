//
//  PokemonDetailViewModel.swift
//  PokeAPI
//
//  Created by Francisco Aguirre San Román on 21/05/25.
//

import Foundation


struct PokemonDetailModel: Codable {
    
    
    let abilities: [PokemonAbilitiesModel]
    
    let height: Int
    
    let weight: Int
    
    let types: [PokemonTypesModel]
    
}


struct PokemonAbilitiesModel:Identifiable, Codable {
    
    var id = UUID()
    
    let ability: PokemonAbilityModel
    
    enum CodingKeys: CodingKey {
        case ability
    }
    
}

struct PokemonAbilityModel: Codable {
    
    let name: String
    
    
}

struct PokemonTypesModel: Codable {
    
    let slot: Int
    
    let type: PokemonTypeModel
}

struct PokemonTypeModel: Codable {
    
    let name: String
}
