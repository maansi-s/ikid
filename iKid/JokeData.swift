//
//  JokeData.swift
//  iKid
//
//  Created by Maansi Surve on 4/27/25.
//

import Foundation

struct JokeData {
    
    static let goodJokes: [Joke] = [
        Joke(setup: "How do you communicate with a fish?",
             punchline: "Drop it a line. 😂"),
        Joke(setup: "Where do cats go swimming?",
             punchline: "The kitty pool. 😂"),
        Joke(setup: "Why does ice cream get invited to every party?",
             punchline: "It's cool and sweet. 😂")
    ]
    
    static let punJokes: [Joke] = [
        Joke(setup: "Why did Adele cross the road?",
             punchline: "To say hello from the other side. 😂"),
        Joke(setup: "What did the grape say when it got crushed?",
             punchline: "Nothing, it just let out a little wine. 😂"),
        Joke(setup: "Ladies, if he can't appreciate your fruit jokes...",
             punchline: "you need to let that mango! 😂")
    ]
    
    static let dadJokes: [Joke] = [
        Joke(setup: "I thought the dryer was shrinking my clothes.",
             punchline: "Turns out it was the refrigerator all along! 😂"),
        Joke(setup: "Did you hear the rumor about butter?",
             punchline: "Well, I'm not going to spread it! 😂"),
        Joke(setup: "Did you hear about the kidnapping at school?",
             punchline: "It's okay, he woke up. 😂")
    ]
    
    static let imageJokes: [Joke] = [
        Joke(setupImage: "question1", punchlineImage: "answer1"),
        Joke(setupImage: "question2", punchlineImage: "answer2")
    ]
    
    static let knockKnockJokes: [KnockKnockJoke] = [
        KnockKnockJoke(who: "Sadie", punchline: "Sadie magic word and I’ll tell you 😏"),
        KnockKnockJoke(who: "Gwen", punchline: "Gwen will these jokes ever end? 💔"),
        KnockKnockJoke(who: "Dublin", punchline: "I'm Dublin down on telling these knock-knock jokes. 😅")
    ]
}
