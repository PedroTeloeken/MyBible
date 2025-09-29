//
//  NewTestamentViewModel.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

import Combine
import Foundation

@MainActor
class NewTestamentViewModel : ObservableObject {
    
    @Published var bibleBooks: [Book] = []
    
    init() {
        loadBible()
    }
    
    private func loadBible() {
        if let bible = BibleLoader.loadBible() {
            bibleBooks = bible.newTestament
        }
    }
    
}
