//
//  CardGame.swift
//  Base App
//
//  Created by Poorna Jayasinghe on 2020-08-29.
//

import Foundation

class CardGame {
    
    var currentChosenCard: Card?
    
    var cards: Array<Card> = []
    
    init(emojis: [String]) {
        for emoji in emojis {
            cards.append(Card(content: emoji))
            cards.append(Card(content: emoji))
        }
        self.shuffleCards()
    }
    
    func randomCard() -> Card {
        return cards[Int.random(in: 0..<cards.count)]
    }
    
    func chooseCard(card: Card) {
        if currentChosenCard != nil {
            if currentChosenCard!.content == card.content {
                
            } else {
                
            }
        }
    }
    
    private func shuffleCards() {
        for position in 0..<cards.count {
            let randomPosition = Int.random(in: 0..<cards.count)
            let currentPositionCard = self.cards[position]
            let randomPositionCard = self.cards[randomPosition]
            self.cards[position] = randomPositionCard
            self.cards[randomPosition] = currentPositionCard
        }
    }
    
    func printCards() {
        print("---------------")
        for card in self.cards {
            print(card.content)
        }
    }
    
}
