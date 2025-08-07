import SwiftUI

struct FavoritosView: View {
    @StateObject private var viewModel = FavoritosViewModel()
    
    var body: some View {
        NavigationStack {
            Group {
                if viewModel.favoritos.isEmpty {
                    EmptyStateView(
                        icon: "heart.slash",
                        title: "Nenhum favorito ainda",
                        description: "Adicione livros aos seus favoritos para encontrá-los aqui",
                        buttonTitle: "Explorar Biblioteca"
                    ) {
                        // Navegação para biblioteca
                    }
                } else {
                    ScrollView {
                        LazyVGrid(columns: [
                            GridItem(.adaptive(minimum: 250, maximum: 300))
                        ], spacing: 20) {
                            ForEach(viewModel.favoritos) { livro in
                                BookCardView(book: livro)
                                    .overlay(
                                        Button(action: {
                                            viewModel.removerFavorito(livro)
                                        }) {
                                            Image(systemName: "heart.fill")
                                                .foregroundColor(.red)
                                                .padding(8)
                                                .background(Color.white)
                                                .clipShape(Circle())
                                                .shadow(radius: 2)
                                        }
                                        .offset(x: 80, y: -80)
                                    )
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Favoritos")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

class FavoritosViewModel: ObservableObject {
    @Published var favoritos: [Book] = []
    
    init() {
        // Simular alguns favoritos para demonstração
        carregarFavoritos()
    }
    
    private func carregarFavoritos() {
        // Por enquanto, simula dados vazios
        // Em uma implementação real, carregaria do UserDefaults ou Core Data
        favoritos = []
    }
    
    func adicionarFavorito(_ livro: Book) {
        if !favoritos.contains(where: { $0.id == livro.id }) {
            favoritos.append(livro)
        }
    }
    
    func removerFavorito(_ livro: Book) {
        favoritos.removeAll { $0.id == livro.id }
    }
}

#Preview {
    FavoritosView()
} 