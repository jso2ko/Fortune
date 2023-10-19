import Foundation

enum Constant {
    static let emptyNumber = 0
    static let textLineLimit = 2
    static let defaultCoins = 100
    
    static let contentMinWidth = CGFloat(128)
    static let contentMaxWidth = CGFloat(720)
    
    static let capsulePaddingX = CGFloat(16)
    static let capsulePaddingY = CGFloat(4)
}

// MARK: - Specificity

extension Constant {
    static let gameSpacing = CGFloat(8)
    static let sideReelsWidth = CGFloat(500)
    
    static let modalContentSpacing = CGFloat(16)
    static let modalImageHeight = CGFloat(72)
    
    static let reelIndices = [0, 1, 2]
    static let topSpinDuration = Double.random(in: 0.5...0.7)
    static let leftSpinDuration = Double.random(in: 0.7...0.9)
    static let rightSpinDuration = Double.random(in: 0.9...1.1)
}
