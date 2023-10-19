import SwiftUI

struct PointsTracker: View {
    @EnvironmentObject var store: GameStore
    
    var body: some View {
        HStack {
            AmountCapsule(value: store.coins, isGameActive: true)
            
            Spacer()
            
            AmountCapsule(value: store.highScore)
                .onTapGesture { store.resetGame() }
        }
    }
}
