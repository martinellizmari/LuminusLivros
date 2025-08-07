import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var selectedTab = 0
    @Published var showWelcomeMessage = true
    
    func navigateToLibrary() {
        selectedTab = 1
    }
    
    func getWelcomeMessage() -> String {
        let hour = Calendar.current.component(.hour, from: Date())
        
        switch hour {
        case 5..<12:
            return "Bom dia! Bem-vindo ao"
        case 12..<18:
            return "Boa tarde! Bem-vindo ao"
        default:
            return "Boa noite! Bem-vindo ao"
        }
    }
    
    func getSubtitleMessage() -> String {
        return "Histórias clássicas para crianças"
    }
    
    func getAppTitle() -> String {
        return "Livros Luminus"
    }
} 