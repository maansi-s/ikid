//
//  JokeView.swift
//  iKid
//
//  Created by Maansi Surve on 4/27/25.
//

import SwiftUI

struct JokeView: View {
    let jokes: [Joke]
    let title: String
    
    @State private var currentJokeIndex = 0
    @State private var showingPunchline = false
    
    var body: some View {
        VStack {
            Spacer()
            
            if let currentJoke = jokes[safe: currentJokeIndex] {
                if currentJoke.hasImage {
                    if let imageName = showingPunchline ? currentJoke.punchlineImage : currentJoke.setupImage {
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 300, maxHeight: 300)
                            .padding()
                    }
                } else {
                    Text(showingPunchline ? currentJoke.punchline : currentJoke.setup)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding()
                }
            }
            
            Spacer()
            
            HStack {
                            Spacer()
                            Button(showingPunchline ? "Next Joke" : "Show Punchline") {
                                if showingPunchline {
                                    currentJokeIndex = (currentJokeIndex + 1) % jokes.count
                                    showingPunchline = false
                                } else {
                                    showingPunchline = true
                                }
                            }
                            .padding()
                        }
        }
        .navigationTitle(title)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemBackground))
    }
}

#Preview {
    JokeView(jokes: JokeData.goodJokes, title: "Good")
}
