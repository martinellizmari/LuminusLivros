import Foundation

final class PageLoader {
    static func loadPages(from filename: String) -> [Page] {
        // Caminho relativo ao bundle principal
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
            print("Arquivo não encontrado: \(filename).json")
            return []
        }
        do {
            let data = try Data(contentsOf: url)
            let pages = try JSONDecoder().decode([Page].self, from: data)
            return pages
        } catch {
            print("Erro ao carregar páginas: \(error)")
            return []
        }
    }
}
