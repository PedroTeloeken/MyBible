//
//  ChapterView.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

import SwiftUI

struct ChapterView: View {
    
    @StateObject var viewModel: ChapterViewModel
    
    @State private var isExpandedMode = true
    
    init(bookName: String, chapters: [Chapter]) {
        _viewModel = StateObject(
            wrappedValue: ChapterViewModel(bookName: bookName, chapters: chapters)
        )
    }
    
    var body: some View {
        NavigationStack {
            List {
                Picker("Modo de Visualização", selection: $isExpandedMode) {
                    Text("Expandido").tag(true)
                    Text("Por Capítulo").tag(false)
                }
                .pickerStyle(.segmented)
                .listRowInsets(EdgeInsets())              
                .listRowBackground(Color.clear)
                
                
                if isExpandedMode {
                    expandedView
                } else {
                    chapterListView
                }
            }
            .navigationTitle(viewModel.bookName)
            .navigationBarTitleDisplayMode(.large)
        }
    }
    
    private var expandedView: some View {
        //Group {
            ForEach(viewModel.chapters, id: \.number) { chapter in
                Section("Capítulo \(chapter.number)") {
                    ForEach(chapter.verses, id: \.number) { verse in
                        (Text("\(verse.number) ")
                            .fontWeight(.semibold)
                         + Text(verse.text))
                        .font(.body)
                    }
                }
            }
        //}
    }
    
    private var chapterListView: some View {
        Section {
            ForEach(viewModel.chapters, id: \.number) { chapter in
                //NavigationLink(destination: ChapterDetailView(chapter: chapter)) {
                HStack {
                    Text("Capítulo \(chapter.number)")
                        .font(.headline)
                    
                    Spacer()
                    
                    Text("\(chapter.verses.count) versículos")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Image(systemName: "chevron.right")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .padding(.vertical, 4)
                //}
            }
        }
    }
    
}


#Preview {
    ChapterView(bookName: "Exodo", chapters: [])
}
