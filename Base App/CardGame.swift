//
//  CardGame.swift
//  Base App
//
//  Created by Poorna Jayasinghe on 2020-08-29.
//

import Foundation

class CardGame: ObservableObject {
    
    @Published var cards: Array<Card> = []
    
    var indexCount = -1
    
    init(emojis: [String]) {
        for emoji in emojis {
            self.indexCount = indexCount + 1
            cards.append(Card(id: indexCount, content: emoji))
            self.indexCount = indexCount + 1
            cards.append(Card(id: indexCount, content: emoji))
        }
        self.shuffleCards()
    }
    
    func randomCard() -> Card {
        return cards[Int.random(in: 0..<cards.count)]
    }
    
    func chooseCard(selectedIndex: Int) {
        self.cards[selectedIndex].isChosen = !self.cards[selectedIndex].isChosen
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
    
    // UI Stuff
    
    var currentCardIndex = 0
    
    func getNextCard() -> Card {
        if currentCardIndex != cards.count {
            let nextCard = cards[currentCardIndex]
            currentCardIndex = currentCardIndex + 1
            return nextCard
        } else {
            currentCardIndex = 0
            return cards[currentCardIndex]
        }
    }
    
}
