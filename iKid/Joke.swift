//
//  Joke.swift
//  iKid
//
//  Created by Maansi Surve on 4/27/25.
//

import Foundation

struct Joke: Identifiable {
    let id = UUID()
    let setup: String
    let punchline: String
    let setupImage: String?
    let punchlineImage: String?
    
    var hasImage: Bool {
        return setupImage != nil && punchlineImage != nil
    }
    
    init(setup: String, punchline: String) {
        self.setup = setup
        self.punchline = punchline
        self.setupImage = nil
        self.punchlineImage = nil
    }
    
    init(setupImage: String, punchlineImage: String) {
        self.setup = ""
        self.punchline = ""
        self.setupImage = setupImage
        self.punchlineImage = punchlineImage
    }
}

extension Array {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
