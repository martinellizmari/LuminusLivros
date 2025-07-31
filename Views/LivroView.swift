//
//  LivroView.swift
//  LivrosLuminus
//
//  Created by Mariana Amábile Martinelli on 30/07/25.
//

import SwiftUI

struct LivroView: View {
    // Exemplo de páginas da história (você pode trocar pelo conteúdo real depois)
    let paginas = [
        "Era uma vez uma pequena aldeia cercada por montanhas...",
        "Nessa aldeia vivia uma menina com um chapéu vermelho...",
        "Um dia, ela decidiu visitar sua avó doente na floresta...",
        "No caminho, encontrou um lobo que parecia amigável...",
        "E assim começa a história do Chapéu Vermelho..."
    ]

    @State private var paginaAtual = 0

    var body: some View {
        VStack {
            Text(paginas[paginaAtual])
                .font(.title2)
                .padding()
                .multilineTextAlignment(.center)

            Spacer()

            HStack {
                Button(action: {
                    if paginaAtual > 0 {
                        paginaAtual -= 1
                    }
                }) {
                    Image(systemName: "chevron.left")
                        .padding()
                }
                .disabled(paginaAtual == 0)

                Spacer()

                Button(action: {
                    if paginaAtual < paginas.count - 1 {
                        paginaAtual += 1
                    }
                }) {
                    Image(systemName: "chevron.right")
                        .padding()
                }
                .disabled(paginaAtual == paginas.count - 1)
            }
            .font(.largeTitle)
            .padding()
        }
        .onAppear {
            OrientationManager.lockOrientation(.landscape)
        }
        .onDisappear {
            OrientationManager.lockOrientation(.portrait)
        }
        .navigationTitle("Livro")
        .navigationBarTitleDisplayMode(.inline)
    }
}
