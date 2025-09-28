//
//  Bible.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

struct Bible: Codable {
    let oldTestament: [Book]
    let newTestament: [Book]?
    
    enum CodingKeys: String, CodingKey {
        case oldTestament = "antigoTestamento"
        case newTestament = "novoTestamento"
    }
    
}
