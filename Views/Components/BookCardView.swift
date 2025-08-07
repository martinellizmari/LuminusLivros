import SwiftUI

struct BookCardView: View {
    let book: Book
    
    var body: some View {
        Image(book.coverImage)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 200, maxHeight: 300)
            .shadow(radius: 8)
            .cornerRadius(12)
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(radius: 4)
    }
}

#Preview {
    BookCardView(
        book: Book(
            id: "test",
            title: "As Formigas e o Gafanhoto",
            coverImage: "capalivro",
            audioFile: "test",
            originalPages: [],
            adaptedPages: []
        )
    )
} 