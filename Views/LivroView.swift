//
//  LivroView.swift
//  LivrosLuminus
//
//  Created by Mariana Amábile Martinelli on 30/07/25.
//

import SwiftUI

struct LivroView: View {
    let paginas: [String]
    let titulo: String
    @State private var paginaAtual = 0

    var body: some View {
        ZStack {
            FullImageView(imageName: paginas[paginaAtual])

            HStack {
                Button(action: {
                    if paginaAtual > 0 { paginaAtual -= 1 }
                }) {
                    Image(systemName: "chevron.left")
                        .padding()
                        .background(Color.black.opacity(0.5))
                        .clipShape(Circle())
                }
                .disabled(paginaAtual == 0)

                Spacer()

                Button(action: {
                    if paginaAtual < paginas.count - 1 { paginaAtual += 1 }
                }) {
                    Image(systemName: "chevron.right")
                        .padding()
                        .background(Color.black.opacity(0.5))
                        .clipShape(Circle())
                }
                .disabled(paginaAtual == paginas.count - 1)
            }
            .font(.largeTitle)
            .padding(.horizontal, 30)
            .padding(.vertical, 50)
        }
        .navigationTitle(titulo)
        .navigationBarTitleDisplayMode(.inline)
    }
}
