import SwiftUI

class LibraryViewModel: ObservableObject {
    @Published var books: [Book] = []
    @Published var isLoading = false
    
    init() {
        loadBooks()
    }
    
    private func loadBooks() {
        isLoading = true
        let placeholderPages = ["capalivro", "capalivro", "capalivro"]
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            var result: [Book] = []
            // Livro real – mantém tudo funcionando como antes
            result.append(
                Book(
                    id: "as-formigas-e-o-gafanhoto",
                    title: AsFormigasEOGafanhoto.titulo,
                    coverImage: "capalivro",
                    audioFile: "As Formigas e o Gafanhoto",
                    originalPages: AsFormigasEOGafanhoto.paginasOriginal,
                    adaptedPages: AsFormigasEOGafanhoto.paginasAdaptada
                )
            )
            // Livros mockados (placeholders)
            result.append(contentsOf: [
                Book(id: "mock-1", title: "A Raposa e as Uvas", coverImage: "placeholder", audioFile: "", originalPages: placeholderPages, adaptedPages: placeholderPages),
                Book(id: "mock-2", title: "O Leão e o Rato", coverImage: "placeholder", audioFile: "", originalPages: placeholderPages, adaptedPages: placeholderPages),
                Book(id: "mock-3", title: "A Lebre e a Tartaruga", coverImage: "placeholder", audioFile: "", originalPages: placeholderPages, adaptedPages: placeholderPages),
                Book(id: "mock-4", title: "O Vento e o Sol", coverImage: "placeholder", audioFile: "", originalPages: placeholderPages, adaptedPages: placeholderPages)
            ])
            self.books = result
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