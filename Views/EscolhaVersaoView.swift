import SwiftUI

struct EscolhaVersaoView: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("Escolha a versão da história")
                .font(.title)
                .padding(.top, 60)

            NavigationLink(
                destination: LivroView(
                    paginas: AsFormigasEOGafanhoto.paginasOriginal,
                    titulo: AsFormigasEOGafanhoto.titulo
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
                    paginas: AsFormigasEOGafanhoto.paginasAdaptada,
                    titulo: AsFormigasEOGafanhoto.titulo
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

            Spacer()
        }
        .padding(.horizontal, 40)
    }
}
