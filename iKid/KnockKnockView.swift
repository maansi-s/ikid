//
//  KnockKnockView.swift
//  iKid
//
//  Created by Maansi Surve on 4/27/25.
//

import SwiftUI

struct KnockKnockView: View {
    let jokes: [KnockKnockJoke]
    
    @State private var currentJokeIndex = 0
    @State private var currentStep = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            if let currentJoke = jokes[safe: currentJokeIndex] {
                switch currentStep {
                case 0:
                    Text("Knock knock!")
                        .font(.title)
                        .multilineTextAlignment(.center)
                case 1:
                    Text("Who's there?")
                        .font(.title)
                        .multilineTextAlignment(.center)
                case 2:
                    Text(currentJoke.who)
                        .font(.title)
                        .multilineTextAlignment(.center)
                case 3:
                    VStack {
                        Text("\(currentJoke.who) who?")
                            .font(.title)
                            .multilineTextAlignment(.center)
                        Text(currentJoke.punchline)
                            .font(.title)
                            .padding(.top, 20)
                            .multilineTextAlignment(.center)
                    }
                default:
                    Text("Knock knock!")
                        .font(.title)
                }
            }
            
            Spacer()
            
            HStack {
                Spacer()
                Button("Next") {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        currentStep = (currentStep + 1) % 4
                        
                        if currentStep == 0 {
                            // Move to the next joke
                            currentJokeIndex = (currentJokeIndex + 1) % jokes.count
                        }
                    }
                }
                .padding()
            }
        }
        .navigationTitle("Knock Knock")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemBackground))
    }
}

#Preview {
    KnockKnockView(jokes: JokeData.knockKnockJokes)
}
