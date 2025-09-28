//
//  NavigationTabItens.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

enum NavigationTabItem: Hashable {
    case oldTestament
    case newTestament
    
    var title: String {
        switch self {
        case .oldTestament: return "Antigo Testamento"
        case .newTestament: return "Novo Testamento"
        }
    }
    
    var systemImage: String {
        switch self {
        case .oldTestament: return "book.fill"
        case .newTestament: return "book.closed.fill"
        }
    }
}

