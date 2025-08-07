import SwiftUI

struct NavigationButton: View {
    let icon: String
    let action: () -> Void
    let isDisabled: Bool
    
    init(icon: String, isDisabled: Bool = false, action: @escaping () -> Void) {
        self.icon = icon
        self.isDisabled = isDisabled
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.white)
                .padding()
                .background(Color.black.opacity(0.5))
                .clipShape(Circle())
        }
        .disabled(isDisabled)
    }
}

#Preview {
    HStack {
        NavigationButton(icon: "chevron.left", isDisabled: true) {
            print("Anterior")
        }
        
        NavigationButton(icon: "chevron.right", isDisabled: false) {
            print("Próximo")
        }
    }
    .padding()
} 