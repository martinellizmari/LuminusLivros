import SwiftUI

struct EscolhaVersaoView: View {
    let book: Book
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Escolha a versão da história")
                .font(.title)
                .padding(.top, 60)

            NavigationLink(
                destination: LivroView(
                    paginas: book.originalPages,
                    titulo: book.title
                )
            ) {
                Text("Versão original")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(12)
            }
            .buttonStyle(PlainButtonStyle())

            NavigationLink(
                destination: LivroView(
                    paginas: book.adaptedPages,
                    titulo: book.title
                )
            ) {
                Text("Versão adaptada")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green.opacity(0.2))
                    .cornerRadius(12)
            }
            .buttonStyle(PlainButtonStyle())

            NavigationLink(destination: PlayerView(audioFileName: book.audioFile, coverImageName: book.coverImage)) {
                Text("Ouça a história")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple.opacity(0.2))
                    .cornerRadius(12)
            }
            .buttonStyle(PlainButtonStyle())

            Spacer()
        }
        .padding(.horizontal, 40)
    }
}
