//
//  ContentView.swift
//  LivrosLuminus
//
//  Created by Mariana Amábile Martinelli on 30/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: LivroView()) {
                    Image("capalivro") // substitua por nome correto da sua imagem
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                        .shadow(radius: 10)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .navigationTitle("Biblioteca")
        }
    }
}
