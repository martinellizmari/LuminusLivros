import SwiftUI

struct PageView: View {
    let page: Page

    var body: some View {
        VStack(spacing: 24) {
            if let imageName = page.imageURL?.absoluteString ?? page.imageURL?.path, !imageName.isEmpty {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 300)
            } else if let imageName = page.imageURL as? String {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 300)
            }
            if let text = page.text {
                Text(text)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
        .padding()
    }
}
