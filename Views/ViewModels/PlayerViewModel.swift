import SwiftUI
import AVFoundation

class PlayerViewModel: ObservableObject {
    @Published var isPlaying = false
    @Published var progress: Double = 0.0
    @Published var duration: Double = 1.0
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    private var audioPlayer: AVAudioPlayer?
    private var timer: Timer?
    
    func setupAudio(audioFileName: String) {
        isLoading = true
        errorMessage = nil
        
        if let url = Bundle.main.url(forResource: audioFileName, withExtension: "m4a") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                duration = audioPlayer?.duration ?? 1.0
                audioPlayer?.prepareToPlay()
                audioPlayer?.delegate = AVAudioPlayerDelegateProxy { [weak self] finished in
                    DispatchQueue.main.async {
                        self?.isPlaying = false
                    }
                }
                startTimer()
                isLoading = false
            } catch {
                errorMessage = "Erro ao carregar áudio: \(error.localizedDescription)"
                isLoading = false
            }
        } else {
            errorMessage = "Arquivo de áudio não encontrado"
            isLoading = false
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
    
    private func startTimer() {
        stopTimer()
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [weak self] _ in
            if let player = self?.audioPlayer {
                DispatchQueue.main.async {
                    self?.progress = player.currentTime
                }
            }
        }
    }
    
    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    func stopAudio() {
        audioPlayer?.stop()
        stopTimer()
        isPlaying = false
    }
    
    deinit {
        stopAudio()
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