import AVFoundation

var audioPlayer: AVAudioPlayer!

enum Sound: String {
    case chime, lose, rise, score, spin, win
    
    func play() {
        switch self {
        default:
            let file = self.rawValue
            let url = Bundle.main.url(forResource: file, withExtension: .audioType)
            audioPlayer = try! AVAudioPlayer(contentsOf: url!)
            audioPlayer.play()
        }
    }
}
