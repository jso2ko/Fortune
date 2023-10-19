import SwiftUI

struct SpinButton: View {
    @EnvironmentObject var store: GameStore
    
    var body: some View {
        Button {
            withAnimation { store.toggleSymbolAnimation() }
            store.spinReels()
            Sound.spin.play()
            withAnimation { store.toggleSymbolAnimation() }
            store.fetchResult()
            store.checkGameOver()
        } label: {
            Image.spin
                .renderingMode(.original)
                .hexagonDimensions()
        }
    }
}
