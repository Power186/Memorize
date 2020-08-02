//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Scott on 8/2/20.
//  Copyright © 2020 Scott. All rights reserved.
// View Model

import Foundation
import SwiftUI

class EmojiMemoryGame {
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        
        let emojis = ["👻", "🤑", "👽"]
        
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intents(s)
    
    func choose(card: MemoryGame<String>.Card) {
        
        model.choose(card: card)
    }
}
