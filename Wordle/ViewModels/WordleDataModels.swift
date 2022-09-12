//
//  WordleDataModels.swift
//  Wordle
//
//  Created by Silvanei  Martins on 11/09/22.
//

import SwiftUI

class WordleDataModel: ObservableObject {
    @Published var guesses: [Guess] = []
    var keyColors = [String: Color]()
    
    init() {
        newGame()
    }
    
    // MARK: - Setup
    func newGame() {
        populateDefaults()
    }
    
    func populateDefaults() {
        guesses = []
        for index in 0...5 {
            guesses.append(Guess(index: index))
        }
        
        // Reset keyboard colors
        let letters = "ABCDEFGHIJLMNOPQRSTUVXYZ"
        for char in letters {
            keyColors[String(char)] = .unused
        }
    }
    
    // MARK: - Game Play
    func addToCurrentWord(_ letter: String) {
        
    }
    
    func enterWord() {
        
    }
    
    func removeLetterFromCurrentWord() {
        
    }
    
}
