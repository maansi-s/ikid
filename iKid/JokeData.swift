//
//  JokeData.swift
//  iKid
//
//  Created by Maansi Surve on 4/27/25.
//

import Foundation

struct JokeData {
    
    static let goodJokes: [Joke] = [
        Joke(setup: "Why did the scarecrow win an award?",
             punchline: "Because he was outstanding in his field!"),
        Joke(setup: "What do you call a fish with no eyes?",
             punchline: "Fsh!"),
        Joke(setup: "How do you organize a space party?",
             punchline: "You planet!")
    ]
    
    static let punJokes: [Joke] = [
        Joke(setup: "Did you hear about the guy who invented the knock-knock joke?",
             punchline: "He won the 'no-bell' prize."),
        Joke(setup: "I'm reading a book on anti-gravity.",
             punchline: "It's impossible to put down!"),
        Joke(setup: "What do you call a fake noodle?",
             punchline: "An impasta!")
    ]
    
    static let dadJokes: [Joke] = [
        Joke(setup: "Why don't scientists trust atoms?",
             punchline: "Because they make up everything!"),
        Joke(setup: "What did the buffalo say to his son when leaving for college?",
             punchline: "Bison!"),
        Joke(setup: "When does a joke become a 'dad joke'?",
             punchline: "When it becomes apparent!")
    ]
    
    static let imageJokes: [Joke] = [
        Joke(setupImage: "question1", punchlineImage: "answer1"),
        Joke(setupImage: "question2", punchlineImage: "answer2")
    ]
    
    static let knockKnockJokes: [KnockKnockJoke] = [
        KnockKnockJoke(who: "Interrupting cow", punchline: "MOO!"),
        KnockKnockJoke(who: "Avenue", punchline: "Avenue knocked on this door before?"),
        KnockKnockJoke(who: "Lettuce", punchline: "Lettuce in, it's cold out here!")
    ]
}
