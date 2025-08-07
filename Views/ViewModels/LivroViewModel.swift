import SwiftUI

class LivroViewModel: ObservableObject {
    @Published var paginaAtual = 0
    @Published var showControls = true
    @Published var totalPaginas: Int
    
    private let paginas: [String]
    private let titulo: String
    
    init(paginas: [String], titulo: String) {
        self.paginas = paginas
        self.titulo = titulo
        self.totalPaginas = paginas.count
    }
    
    var currentPage: String {
        guard paginaAtual < paginas.count else { return "" }
        return paginas[paginaAtual]
    }
    
    var pageTitle: String {
        return titulo
    }
    
    var progressText: String {
        return "\(paginaAtual + 1)/\(totalPaginas)"
    }
    
    var canGoPrevious: Bool {
        return paginaAtual > 0
    }
    
    var canGoNext: Bool {
        return paginaAtual < totalPaginas - 1
    }
    
    func goToPreviousPage() {
        if canGoPrevious {
            paginaAtual -= 1
        }
    }
    
    func goToNextPage() {
        if canGoNext {
            paginaAtual += 1
        }
    }
    
    func toggleControls() {
        withAnimation(.easeInOut(duration: 0.3)) {
            showControls.toggle()
        }
    }
    
    func hideControlsAfterDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            withAnimation(.easeInOut(duration: 0.3)) {
                self.showControls = false
            }
        }
    }
} 