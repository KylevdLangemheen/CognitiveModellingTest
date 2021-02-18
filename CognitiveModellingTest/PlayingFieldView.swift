//
//  ContentView.swift
//  CognitiveModelling
//
//  Created by H.B.R. van de Langemheen on 18/02/2021.
//

import SwiftUI

struct PlayingFieldView: View {
    let data = Array(1...45).map { "item \($0)" }
    
    let layout = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout, spacing: 1) {
                ForEach(data, id: \.self) { item in
                    VStack {
                        Rectangle()
                            .fill(Color.white)
                            .frame(height: 40)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayingFieldView()
    }
}
