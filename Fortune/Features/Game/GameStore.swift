import SwiftUI

class GameStore: ObservableObject {
    @AppStorage(.coinsKey) var coins = Constant.defaultCoins
    @AppStorage(.scoreKey) var highScore = Constant.emptyNumber
    
    @Published var reels = Constant.reelIndices
    @Published var symbols = [String].gameSymbols
    
    @Published var isSymbolAnimating = false
    @Published var isModalAnimating = false
    @Published var isGameOver = false
    
    var topReelSymbol: String { symbols[reels[0]] }
    var leftReelSymbol: String { symbols[reels[1]] }
    var rightReelSymbol: String { symbols[reels[2]] }
}

// MARK: - Functions

extension GameStore {
    func spinReels() {
        reels = reels.map({_ in
            Int.random(in: 0...symbols.count - 1)
        })
    }
    
    func fetchResult(winAmount: Int = 100, loseAmount: Int = 10) {
        if reels[0] == reels[1] && reels[1] == reels[2] && reels[0] == reels[2] {
            coins += winAmount
            validateHighScore()
        } else {
            coins -= loseAmount
        }
    }
    
    func validateHighScore() {
        if coins > highScore {
            highScore = coins
            Sound.score.play()
        } else {
            Sound.win.play()
        }
    }
    
    func checkGameOver() {
        if coins <= Constant.emptyNumber {
            toggleGameOverState()
            Sound.lose.play()
        }
    }
    
    func resetGame() {
        highScore = Constant.emptyNumber
        refillCoins()
        Sound.chime.play()
    }
    
    func refillCoins() {
        coins = Constant.defaultCoins
    }
    
    func startSequence() {
        toggleSymbolAnimation()
        Sound.rise.play()
    }
    
    func toggleSymbolAnimation() {
        isSymbolAnimating.toggle()
    }
    
    func toggleModalAnimation() {
        isModalAnimating.toggle()
    }
    
    func toggleGameOverState() {
        isGameOver.toggle()
    }
}
