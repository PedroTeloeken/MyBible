//
//  ChapterDetailView.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

import SwiftUI

struct ChapterDetailView: View {
    let chapter: Chapter
    
    var body: some View {
        List {
            ForEach(chapter.verses, id: \.number) { verse in
                (Text("\(verse.number) ")
                    .fontWeight(.semibold)
                + Text(verse.text))
                    .font(.body)
                    .padding(.vertical, 2)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Capítulo \(chapter.number)")
    }
}
