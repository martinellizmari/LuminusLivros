import SwiftUI

struct SobreNosView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    // Logo/Imagem do app
                    Image("capalivro")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 200, maxHeight: 200)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                    
                    // Informações do app
                    VStack(spacing: 20) {
                        Text("Livros Luminus")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                        
                        Text("Versão 1.0.0")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text("App de baixo estímulo para iPad, com histórias clássicas para adultos lerem para crianças.")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 40)
                    }
                    
                    // Recursos do app
                    VStack(spacing: 15) {
                        InfoCard(icon: "book.fill", title: "Histórias Clássicas", description: "Contos tradicionais adaptados")
                        InfoCard(icon: "ear.fill", title: "Narração em Áudio", description: "Ouça as histórias narradas", color: .green)
                        InfoCard(icon: "eye.fill", title: "Versões Adaptadas", description: "Conteúdo acessível para todos", color: .orange)
                        InfoCard(icon: "ipad", title: "Otimizado para iPad", description: "Experiência imersiva em tela cheia", color: .purple)
                    }
                    .padding(.horizontal, 40)
                    
                    // Informações de contato
                    VStack(spacing: 15) {
                        Text("Desenvolvido com ❤️")
                            .font(.headline)
                            .foregroundColor(.gray)
                        
                        Text("Para suporte ou sugestões:")
                            .font(.body)
                            .foregroundColor(.gray)
                        
                        Button(action: {
                            // Abrir email ou contato
                            print("Contato solicitado")
                        }) {
                            Text("Entre em contato")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }
                    
                    Spacer(minLength: 50)
                }
                .padding()
            }
            .navigationTitle("Sobre nós")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

// FeatureRow removido - substituído por InfoCard

#Preview {
    SobreNosView()
} 