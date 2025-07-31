//
//  LivroView.swift
//  LivrosLuminus
//
//  Created by Mariana Amábile Martinelli on 30/07/25.
//

import SwiftUI

struct LivroView: View {
    let paginas: [Page] = PageLoader.loadPages(from: "AsFormigasEOGafanhoto")
    
    @State private var paginaAtual = 0
    
    var body: some View {
        VStack {
            if paginas.indices.contains(paginaAtual) {
                PageView(page: paginas[paginaAtual])
            } else {
                Text("Página não encontrada")
            }
            
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
