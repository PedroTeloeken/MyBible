//
//  Chapter.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

struct Chapter: Codable, Identifiable {
    var id: Int { number }
    let number: Int
    let verses: [Verse]
    
    enum CodingKeys: String, CodingKey {
        case number = "capitulo"
        case verses = "versiculos"
    }
}
