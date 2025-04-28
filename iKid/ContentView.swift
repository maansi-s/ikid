//
//  ContentView.swift
//  iKid
//
//  Created by Maansi Surve on 4/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            JokeView(jokes: JokeData.goodJokes, title: "Good")
                .tabItem {
                    Label("Good", systemImage: "star.fill")
                }
            
            JokeView(jokes: JokeData.punJokes, title: "Pun")
                .tabItem {
                    Label("Pun", systemImage: "face.smiling")
                }
            
            JokeView(jokes: JokeData.dadJokes, title: "Dad")
                .tabItem {
                    Label("Dad", systemImage: "person.fill")
                }
            
            KnockKnockView(jokes: JokeData.knockKnockJokes)
                .tabItem {
                    Label("Knock-Knock", systemImage: "door.left.hand.open")
                }
            
            JokeView(jokes: JokeData.imageJokes, title: "Picture")
                .tabItem {
                    Label("Picture", systemImage: "photo")
                }
        }
    }
}

#Preview {
    ContentView()
}
