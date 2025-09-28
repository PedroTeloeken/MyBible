//
//  Verse.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

struct Verse: Codable, Identifiable {
    var id: Int { number }
    let number: Int
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case number = "versiculo"
        case text = "texto"
    }
    
}
