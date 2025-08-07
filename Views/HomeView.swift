import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            // Aba Home
            HomeScreenView(selectedTab: $viewModel.selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            // Aba Biblioteca
            LibraryView()
                .tabItem {
                    Image(systemName: "books.vertical")
                    Text("Biblioteca")
                }
                .tag(1)
            
            // Aba Favoritos
            FavoritosView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favoritos")
                }
                .tag(2)
            
            // Aba Pesquisa
            PesquisaView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Pesquisa")
                }
                .tag(3)
            
            // Aba Sobre nós
            SobreNosView()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Sobre nós")
                }
                .tag(4)
        }
        .accentColor(.blue)
    }
}

// Tela de Home personalizada
struct HomeScreenView: View {
    @Binding var selectedTab: Int
    @StateObject private var homeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Imagem de fundo ocupando toda a tela
                Image("ImageHome")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .clipped()
                
                // Conteúdo sobreposto
                VStack(spacing: 40) {
                    Spacer()
                    
                    // Texto de boas-vindas
                    VStack(spacing: 16) {
                        Text(homeViewModel.getWelcomeMessage())
                            .font(.title2)
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                        
                        Text(homeViewModel.getAppTitle())
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                        
                        Text(homeViewModel.getSubtitleMessage())
                            .font(.body)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .shadow(radius: 2)
                    }
                    
                    Spacer()
                    
                    // Botão para acessar a biblioteca
                    Button(action: {
                        selectedTab = 1 // Muda para a aba Biblioteca
                    }) {
                        HStack {
                            Image(systemName: "books.vertical")
                            Text("Explorar Biblioteca")
                        }
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(radius: 5)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

// Views implementadas em arquivos separados

#Preview {
    HomeView()
} 