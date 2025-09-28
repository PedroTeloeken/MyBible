//
//  OldTestamentViewModel.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

import Combine
import Foundation

@MainActor
class OldTestamentViewModel : ObservableObject {
    
    @Published var bibleBooks: [Book] = []
    
    init() {
        loadBible()
    }
    
    private func loadBible() {
        if let bible = BibleLoader.loadBible() {
            bibleBooks = bible.oldTestament
        }
    }
    
}
