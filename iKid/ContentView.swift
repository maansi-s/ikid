//
//  ContentView.swift
//  iKid
//
//  Created by Maansi Surve on 4/27/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Welcome to iKid!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("😂")
                .font(.system(size: 100))
                .frame(width: 100, height: 100)
                .padding()
            
            Text("Click below for different jokes!")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding(.bottom)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemBackground))
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
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
