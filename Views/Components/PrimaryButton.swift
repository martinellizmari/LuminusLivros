import SwiftUI

struct PrimaryButton: View {
    let title: String
    let icon: String?
    let action: () -> Void
    let color: Color
    
    init(title: String, icon: String? = nil, color: Color = .blue, action: @escaping () -> Void) {
        self.title = title
        self.icon = icon
        self.color = color
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            HStack {
                if let icon = icon {
                    Image(systemName: icon)
                }
                Text(title)
            }
            .font(.headline)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(color)
            .cornerRadius(12)
            .shadow(radius: 3)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    VStack(spacing: 20) {
        PrimaryButton(title: "Explorar Biblioteca", icon: "books.vertical") {
            print("Biblioteca")
        }
        
        PrimaryButton(title: "Versão Original", color: .blue) {
            print("Original")
        }
        
        PrimaryButton(title: "Versão Adaptada", color: .green) {
            print("Adaptada")
        }
        
        PrimaryButton(title: "Ouça a História", color: .purple) {
            print("Áudio")
        }
    }
    .padding()
} 