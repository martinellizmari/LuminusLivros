import SwiftUI

struct FullImageView: View {
    let imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
            .clipped()
    }
}
