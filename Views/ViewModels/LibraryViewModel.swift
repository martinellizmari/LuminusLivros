import SwiftUI

class LibraryViewModel: ObservableObject {
    @Published var books: [Book] = []
    @Published var isLoading = false
    
    init() {
        loadBooks()
    }
    
    private func loadBooks() {
        isLoading = true
        
        // Simular carregamento de livros
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.books = [
                Book(
                    id: "as-formigas-e-o-gafanhoto",
                    title: "As Formigas e o Gafanhoto",
                    coverImage: "capalivro",
                    audioFile: "As Formigas e o Gafanhoto",
                    originalPages: AsFormigasEOGafanhoto.paginasOriginal,
                    adaptedPages: AsFormigasEOGafanhoto.paginasAdaptada
                )
            ]
            self.isLoading = false
        }
    }
}

struct Book: Identifiable {
    let id: String
    let title: String
    let coverImage: String
    let audioFile: String
    let originalPages: [String]
    let adaptedPages: [String]
} 