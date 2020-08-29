//
//  Card.swift
//  Base App
//
//  Created by Poorna Jayasinghe on 2020-08-29.
//

import Foundation

struct Card {
    
    var content: String
    var isChosen = false
    var isMatched = false
    
    init(content: String) {
        self.content = content
    }
}
