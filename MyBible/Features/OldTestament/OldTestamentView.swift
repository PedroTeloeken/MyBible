//
//  HomeView.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

import SwiftUI

struct OldTestamentView: View {
    
    @StateObject private var viewModel = OldTestamentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                VStack(spacing: 18) {
                    Image(systemName: "book.fill")
                        .font(.system(size: 70))
                        .foregroundStyle(.brown)
                    
                    Text("Antigo Testamento")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.primary)
                    
                    Text("Tempo da queda e da promessa,\nquando a humanidade vivia na espera pela luz.")
                        .font(.body)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 32)
                    
                }.frame(maxWidth: .infinity, alignment: .center)
                
                ForEach(viewModel.bibleBooks) { book in
                    Section {
                        NavigationLink(destination: ChapterView(bookName: book.name, chapters: book.chapters)
                            .toolbar(.hidden, for: .tabBar)) {
                            Text(book.name)
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundStyle(.primary)
                        }
                    }
                }
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGroupedBackground))
    }
}

#Preview {
    OldTestamentView()
}
