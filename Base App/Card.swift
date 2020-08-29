//
//  Card.swift
//  Base App
//
//  Created by Poorna Jayasinghe on 2020-08-29.
//

import Foundation

struct Card: Identifiable {
    
    var id: Int
    var content: String
    var isChosen = false
    var isMatched = false
    
    init(id: Int, content: String) {
        self.id = id
        self.content = content
    }
}
