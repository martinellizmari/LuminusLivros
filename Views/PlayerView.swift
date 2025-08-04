import SwiftUI
import AVFoundation

struct PlayerView: View {
    let audioFileName: String
    let coverImageName: String

    @State private var audioPlayer: AVAudioPlayer?
    @State private var isPlaying = false
    @State private var progress: Double = 0.0
    @State private var duration: Double = 1.0
    @State private var timer: Timer?

    var body: some View {
        VStack(spacing: 32) {
            Spacer()
            Image(coverImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .cornerRadius(16)
                .shadow(radius: 10)

            Slider(value: $progress, in: 0...duration, onEditingChanged: sliderChanged)
                .accentColor(.blue)

            HStack(spacing: 40) {
                Button(action: togglePlayPause) {
                    Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(.blue)
                }
            }
            Spacer()
        }
        .padding()
        .onAppear(perform: setupAudio)
        .onDisappear(perform: stopAudio)
    }

    func setupAudio() {
        if let url = Bundle.main.url(forResource: audioFileName, withExtension: "m4a") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                duration = audioPlayer?.duration ?? 1.0
                audioPlayer?.prepareToPlay()
                audioPlayer?.delegate = AVAudioPlayerDelegateProxy { finished in
                    isPlaying = false
                }
                startTimer()
            } catch {
                print("Erro ao carregar áudio: \(error)")
            }
        }
    }

    func togglePlayPause() {
        guard let player = audioPlayer else { return }
        if isPlaying {
            player.pause()
            stopTimer()
        } else {
            player.play()
            startTimer()
        }
        isPlaying.toggle()
    }

    func sliderChanged(editing: Bool) {
        guard let player = audioPlayer else { return }
        if !editing {
            player.currentTime = progress
            if isPlaying {
                player.play()
            }
        }
    }

    func startTimer() {
        stopTimer()
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            if let player = audioPlayer {
                progress = player.currentTime
            }
        }
    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }

    func stopAudio() {
        audioPlayer?.stop()
        stopTimer()
    }
}

// Proxy para delegate do AVAudioPlayer (para SwiftUI)
class AVAudioPlayerDelegateProxy: NSObject, AVAudioPlayerDelegate {
    var didFinish: ((Bool) -> Void)?
    init(didFinish: ((Bool) -> Void)? = nil) {
        self.didFinish = didFinish
    }
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        didFinish?(flag)
    }
}