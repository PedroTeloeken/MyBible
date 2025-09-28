//
//  BibleLoader.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

import Foundation

class BibleLoader {
    
    static func loadBible() -> Bible? {
        // Procura o arquivo no bundle principal
        guard let url = Bundle.main.url(forResource: "myBible", withExtension: "json") else {
            print("❌ JSON file not found")
            return nil
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let bible = try decoder.decode(Bible.self, from: data)
            return bible
        } catch {
            print("❌ Error decoding JSON:", error)
            return nil
        }
    }
}
