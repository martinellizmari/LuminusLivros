import SwiftUI
import UIKit

struct BookCardView: View {
    let book: Book
    
    // Dimensões padronizadas
    private let coverSize = CGSize(width: 200, height: 300)

    init(book: Book) {
        self.book = book
    }
    
    var body: some View {
        VStack(spacing: 12) {
            coverView
                .frame(width: coverSize.width, height: coverSize.height)
                .cornerRadius(12)
                .shadow(radius: 8)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(radius: 4)
    }
    
    private var coverView: some View {
        if let uiImage = UIImage(named: book.coverImage) {
            return AnyView(Image(uiImage: uiImage)
                .resizable()
                .scaledToFill()
                .clipped())
        } else {
            return AnyView(
                ZStack {
                    Color(.systemGray5)
                    Image(systemName: "book.closed")
                        .font(.system(size: 48, weight: .regular))
                        .foregroundColor(.gray)
                }
                .clipped()
            )
        }
    }
}

#Preview {
    HStack(spacing: 20) {
        BookCardView(
            book: Book(
                id: "test",
                title: "A Galinha dos Ovos de Ouro",
                coverImage: "inexistente",
                audioFile: "",
                originalPages: ["capalivro"],
                adaptedPages: ["capalivro"]
            )
        )
        BookCardView(
            book: Book(
                id: "test2",
                title: "O Vento e o Sol",
                coverImage: "capalivro",
                audioFile: "",
                originalPages: ["capalivro"],
                adaptedPages: ["capalivro"]
            )
        )
    }
    .padding()
} 