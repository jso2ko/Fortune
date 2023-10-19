import SwiftUI

extension Text {
    static let coinsLabel = Text("your\ncoins".uppercased())
    static let highScoreLabel = Text("high\nscore".uppercased())
    
    static let gameOverTitle = Text("game over".uppercased())
    static let newGameLabel = Text("new game".uppercased())
    
    static let gameOverMessage = Text(
        "Sorry, you lost all of the coins.\nLet's play again!"
    )
}

// MARK: - Strings

extension Array<String> {
    static let gameSymbols = ["bell", "cherry", "grape", "seven", "strawberry"]
}

extension String {
    static let audioType = "mp3"
    static let coinsKey = "coins"
    static let scoreKey = "score"
}
