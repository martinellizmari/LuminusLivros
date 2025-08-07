import SwiftUI
import AVFoundation

struct PlayerView: View {
    let audioFileName: String
    let coverImageName: String

    @StateObject private var viewModel = PlayerViewModel()
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 32) {
            // Botão voltar no topo
            HStack {
                Button("Voltar") {
                    dismiss()
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.black.opacity(0.5))
                .cornerRadius(8)
                
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            
            Spacer()
            
            // Capa do livro (pequena)
            Image(coverImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .cornerRadius(16)
                .shadow(radius: 10)

            // Controles de áudio
            VStack(spacing: 20) {
                Slider(value: $viewModel.progress, in: 0...viewModel.duration, onEditingChanged: viewModel.sliderChanged)
                    .accentColor(.blue)

                HStack(spacing: 40) {
                    Button(action: viewModel.togglePlayPause) {
                        Image(systemName: viewModel.isPlaying ? "pause.circle.fill" : "play.circle.fill")
                            .resizable()
                            .frame(width: 64, height: 64)
                            .foregroundColor(.blue)
                    }
                }
            }
            .padding(.horizontal, 40)
            
            Spacer()
        }
        .navigationBarHidden(true)
        .toolbar(.hidden, for: .tabBar)
        .onAppear {
            viewModel.setupAudio(audioFileName: audioFileName)
        }
        .onDisappear {
            viewModel.stopAudio()
        }
    }

    // Funções movidas para PlayerViewModel
}

// AVAudioPlayerDelegateProxy movido para PlayerViewModel