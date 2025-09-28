//
//  Book.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

struct Book: Codable, Identifiable {
    var id: String { name }
    let name: String
    let chapters: [Chapter]
    
    enum CodingKeys: String, CodingKey {
        case name = "nome"
        case chapters = "capitulos"
    }
    
}
