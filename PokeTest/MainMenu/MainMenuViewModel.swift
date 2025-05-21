//
//  MainMenuViewModel.swift
//  PokeAPI
//
//  Created by Francisco Aguirre San Román on 20/05/25.
//

import Foundation
import Observation


@Observable
class MainMenuViewModel {
    
    var title: String = "Welcome to PokePaco"
    
    
    
    func setNewTitle() {
        self.title = "Pokedex"
    }
    
    
}
