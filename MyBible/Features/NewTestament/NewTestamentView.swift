//
//  NewTestamentView.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

import SwiftUI

struct NewTestamentView: View {
    
    @StateObject private var viewModel = NewTestamentViewModel()

    
    var body: some View {
        NavigationStack {
            List {
                VStack(spacing: 18) {
                    Image(systemName: "book.closed.fill")
                        .font(.system(size: 70))
                        .foregroundStyle(.brown)
                    
                    Text("Novo Testamento")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.primary)
                    
                    Text("A luz da redenção, a promessa cumprida em Jesus Cristo.\nO tempo da esperança e da vida eterna.")
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
    NewTestamentView()
}
