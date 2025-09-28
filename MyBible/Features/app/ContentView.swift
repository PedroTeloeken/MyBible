//
//  ContentView.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedScreen: NavigationTabItem = .oldTestament
    
    var body: some View {
        TabView(selection: $selectedScreen) {
            
            NavigationStack {
                OldTestamentView()
                    .navigationTitle(NavigationTabItem.oldTestament.title)
            }
            .tabItem {
                Label(NavigationTabItem.oldTestament.title,
                      systemImage: NavigationTabItem.oldTestament.systemImage)
            }
            .tag(NavigationTabItem.oldTestament)
            
            NavigationStack {
                NewTestamentView()
                    .navigationTitle(NavigationTabItem.newTestament.title)
            }
            .tabItem {
                Label(NavigationTabItem.newTestament.title,
                      systemImage: NavigationTabItem.newTestament.systemImage)
            }
            .tag(NavigationTabItem.newTestament)
        }
    }
}

#Preview {
    ContentView()
}
