//
//  StringUtils.swift
//  PokeAPI
//
//  Created by Francisco Aguirre San Román on 20/05/25.
//

import Foundation

extension String {
    
    func capitalizingFirstLetter() -> String {
        guard let firstCharacter = first else {
            return self
        }
        return String(firstCharacter).uppercased() + dropFirst()
    }
}


