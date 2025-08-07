import SwiftUI

struct PesquisaView: View {
    @StateObject private var viewModel = PesquisaViewModel()
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Barra de pesquisa
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    TextField("Buscar livros...", text: $searchText)
                        .textFieldStyle(PlainTextFieldStyle())
                        .onChange(of: searchText) { newValue in
                            viewModel.buscarLivros(query: newValue)
                        }
                    
                    if !searchText.isEmpty {
                        Button("Limpar") {
                            searchText = ""
                            viewModel.limparBusca()
                        }
                        .foregroundColor(.blue)
                    }
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.top)
                
                // Resultados da busca
                Group {
                    if viewModel.isLoading {
                        ProgressView("Buscando...")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    } else if searchText.isEmpty {
                        EmptyStateView(
                            icon: "magnifyingglass",
                            title: "Digite para buscar",
                            description: "Encontre seus livros favoritos"
                        )
                    } else if viewModel.resultados.isEmpty {
                        EmptyStateView(
                            icon: "doc.text.magnifyingglass",
                            title: "Nenhum resultado encontrado",
                            description: "Tente buscar com outros termos"
                        )
                    } else {
                        ScrollView {
                            LazyVGrid(columns: [
                                GridItem(.adaptive(minimum: 250, maximum: 300))
                            ], spacing: 20) {
                                ForEach(viewModel.resultados) { livro in
                                    NavigationLink(destination: EscolhaVersaoView(book: livro)) {
                                        BookCardView(book: livro)
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }
                            }
                            .padding()
                        }
                    }
                }
            }
            .navigationTitle("Pesquisa")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

class PesquisaViewModel: ObservableObject {
    @Published var resultados: [Book] = []
    @Published var isLoading = false
    
    private let todosLivros = [
        Book(
            id: "as-formigas-e-o-gafanhoto",
            title: "As Formigas e o Gafanhoto",
            coverImage: "capalivro",
            audioFile: "As Formigas e o Gafanhoto",
            originalPages: AsFormigasEOGafanhoto.paginasOriginal,
            adaptedPages: AsFormigasEOGafanhoto.paginasAdaptada
        )
    ]
    
    func buscarLivros(query: String) {
        guard !query.isEmpty else {
            resultados = []
            return
        }
        
        isLoading = true
        
        // Simular busca assíncrona
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            let queryLower = query.lowercased()
            self.resultados = self.todosLivros.filter { livro in
                livro.title.lowercased().contains(queryLower)
            }
            self.isLoading = false
        }
    }
    
    func limparBusca() {
        resultados = []
    }
}

#Preview {
    PesquisaView()
} 