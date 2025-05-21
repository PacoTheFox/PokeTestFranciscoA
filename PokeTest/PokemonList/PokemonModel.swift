//
//  Pokemon.swift
//  PokeAPI
//
//  Created by Francisco Aguirre San Román on 20/05/25.
//

import Foundation

struct Pokemon: Identifiable, Codable {
    var id: UUID = UUID()
    var index: Int = 0
    let name: String
    let url: String

    var capitalizedName: String {
        name.capitalizingFirstLetter()
    }

    var spriteURL: URL? {
        URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(index).png")
    }

    enum CodingKeys: String, CodingKey {
        case name, url
    }
}


struct PokemonRequestWrapper: Codable {
    let results: [Pokemon]
}
