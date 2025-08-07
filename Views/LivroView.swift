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
    @StateObject private var viewModel: LivroViewModel
    @Environment(\.dismiss) var dismiss
    
    init(paginas: [String], titulo: String) {
        self.paginas = paginas
        self.titulo = titulo
        self._viewModel = StateObject(wrappedValue: LivroViewModel(paginas: paginas, titulo: titulo))
    }

    var body: some View {
        ZStack {
            FullImageView(imageName: viewModel.currentPage)
                .transition(.asymmetric(
                    insertion: .move(edge: .trailing),
                    removal: .move(edge: .leading)
                ))
                .animation(.easeInOut(duration: 0.3), value: viewModel.paginaAtual)
                .onTapGesture {
                    viewModel.toggleControls()
                }

            // Menu superior (desaparece após 2s)
            if viewModel.showControls {
                VStack {
                    // Barra superior
                    HStack {
                        Button("Voltar") {
                            dismiss()
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black.opacity(0.5))
                        .cornerRadius(8)
                        
                        Spacer()
                        
                        Text(viewModel.pageTitle)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black.opacity(0.5))
                            .cornerRadius(8)
                        
                        Spacer()
                        
                        Text(viewModel.progressText)
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black.opacity(0.5))
                            .cornerRadius(8)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 50)
                    
                    Spacer()
                }
                .transition(.opacity)
            }
            
            // Controles de navegação (sempre visíveis)
            VStack {
                Spacer()
                
                HStack {
                    NavigationButton(
                        icon: "chevron.left",
                        isDisabled: !viewModel.canGoPrevious
                    ) {
                        viewModel.goToPreviousPage()
                    }

                    Spacer()

                    NavigationButton(
                        icon: "chevron.right",
                        isDisabled: !viewModel.canGoNext
                    ) {
                        viewModel.goToNextPage()
                    }
                }
                .font(.largeTitle)
                .padding(.horizontal, 30)
                .padding(.bottom, 50)
            }
        }
        .navigationBarHidden(true)
        .toolbar(.hidden, for: .tabBar)
        .onAppear {
            viewModel.hideControlsAfterDelay()
        }
    }
}
