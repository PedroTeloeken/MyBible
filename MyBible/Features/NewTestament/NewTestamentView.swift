//
//  NewTestamentView.swift
//  MyBible
//
//  Created by Pedro Teloeken on 28/09/25.
//

import SwiftUI

struct NewTestamentView: View {
    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "book.closed.fill")
                .font(.system(size: 70))
                .foregroundStyle(.brown)
                .padding(.top, 40)
            
            Text("Novo Testamento")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(.primary)
            
            Text("A luz da redenção, a promessa cumprida em Jesus Cristo.\nO tempo da esperança e da vida eterna.")
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGroupedBackground))
    }
}


#Preview {
    NewTestamentView()
}
