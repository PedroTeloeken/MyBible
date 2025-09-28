//
//  ChapterViewModel.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

import Combine
import Foundation

@MainActor
class ChapterViewModel : ObservableObject {
    
    @Published var bookName: String
    @Published var chapters: [Chapter]
    
    init(bookName: String, chapters: [Chapter]) {
        self.bookName = bookName
        self.chapters = chapters
    }
    
}
