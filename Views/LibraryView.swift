//
//  LibraryView.swift
//  LivrosLuminus
//
//  Created by Mariana Amábile Martinelli on 30/07/25.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                NavigationLink(destination: EscolhaVersaoView()) {
                    Image("capalivro")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 400, maxHeight: 600)
                        .shadow(radius: 10)
                }
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
            }
            .navigationTitle("Biblioteca")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}
