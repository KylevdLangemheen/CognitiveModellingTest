//
//  ContentView.swift
//  CognitiveModelling
//
//  Created by H.B.R. van de Langemheen on 18/02/2021.
//

import SwiftUI

struct PlayingFieldView: View {
    let data = Array(1...45).map { "\($0)" }
    
    let hand: Array<Color> = [Color.red, Color.green, Color.blue, Color.orange, Color.purple, Color.yellow, Color.pink, Color.black, Color.gray]
    
    let layout = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
    ]
    
    var body: some View {
        VStack{
            ScrollView {
                LazyVGrid(columns: layout, spacing: 1) {
                    ForEach(data, id: \.self) { item in
                        VStack {
                            CardView(txt: item, color: Color.white)
                        }
                    }
                }
                .padding(20)
            }
            
            HandView(hand: hand)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayingFieldView()
        }
    }
}

struct HandView: View {
    var hand: Array<Color>
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(hand[0])
                .frame(width: 160, height: 80)
                .padding(20)
        }
    }
}

struct CardView: View {
    var txt: String
    var color: Color
    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
                .frame(height: 40)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            
            Text(txt)
        }
    }
}
