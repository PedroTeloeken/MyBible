//
//  ChapterView.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

import SwiftUI

struct ChapterView: View {
    
    @StateObject var viewModel: ChapterViewModel
    
    init(bookName: String, chapters: [Chapter]) {
        _viewModel = StateObject(
            wrappedValue: ChapterViewModel(bookName: bookName, chapters: chapters)
        )
    }
    
    var body: some View {
        List {
            ForEach(viewModel.chapters, id: \.number) { chapter in
                Section("Capítulo \(chapter.number.description)") {
                    ForEach(chapter.verses, id: \.number) { verse in
                        (Text("\(verse.number) ")
                            .fontWeight(.semibold)
                        + Text(verse.text))
                            .font(.body)
                    }
                }
            }
        }
        .navigationTitle(viewModel.bookName)
    }
}


#Preview {
    ChapterView(bookName: "Exodo", chapters: [])
}
