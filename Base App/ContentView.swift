//
//  ContentView.swift
//  Base App
//
//  Created by Poorna Jayasinghe on 2020-08-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach((1...4), id: \.self) { index in
                PoornaCardRow()
            }
        }
    }
}


struct PoornaCardRow: View {
    var body: some View {
        HStack {
            ForEach((1...4), id: \.self) { index in
                PoornaCard(title: "Poorna")
            }
        }.padding()
    }
}

struct PoornaCard: View {

    var title: String?

    var isFaceUp = true

    private let CORNER_RADIUS = CGFloat(10)
    
    var body: some View {
        ZStack {
            if isFaceUp {
                
                RoundedRectangle(cornerRadius: CORNER_RADIUS)
                    .foregroundColor(.white)
                    .shadow(radius: CORNER_RADIUS)
                
                RoundedRectangle(cornerRadius: CORNER_RADIUS)
                    .stroke(Color.red, lineWidth: 1)
                    .foregroundColor(.red)
                
                Text(title!)
                    .foregroundColor(Color.yellow)
                    .fontWeight(.bold)
                
            } else {
                RoundedRectangle(cornerRadius: CORNER_RADIUS)
                    .foregroundColor(.red)
                    .shadow(radius: CORNER_RADIUS)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
