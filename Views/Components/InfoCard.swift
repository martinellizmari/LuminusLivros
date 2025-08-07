import SwiftUI

struct InfoCard: View {
    let icon: String
    let title: String
    let description: String
    let color: Color
    
    init(icon: String, title: String, description: String, color: Color = .blue) {
        self.icon = icon
        self.title = title
        self.description = description
        self.color = color
    }
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(color)
                .frame(width: 30)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

#Preview {
    VStack(spacing: 15) {
        InfoCard(
            icon: "book.fill",
            title: "Histórias Clássicas",
            description: "Contos tradicionais adaptados"
        )
        
        InfoCard(
            icon: "ear.fill",
            title: "Narração em Áudio",
            description: "Ouça as histórias narradas",
            color: .green
        )
        
        InfoCard(
            icon: "eye.fill",
            title: "Versões Adaptadas",
            description: "Conteúdo acessível para todos",
            color: .orange
        )
    }
    .padding()
} 