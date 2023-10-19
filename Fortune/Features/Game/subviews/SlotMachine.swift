import SwiftUI

struct SlotMachine: View {
    @EnvironmentObject var store: GameStore
    
    var body: some View {
        VStack {
            ReelContainer(
                id: store.topReelSymbol,
                state: store.isSymbolAnimating,
                duration: Constant.topSpinDuration,
                action: store.startSequence
            )
            
            HStack {
                ReelContainer(
                    id: store.leftReelSymbol,
                    state: store.isSymbolAnimating,
                    duration: Constant.leftSpinDuration,
                    action: store.toggleSymbolAnimation
                )
                
                Spacer()
                
                ReelContainer(
                    id: store.rightReelSymbol,
                    state: store.isSymbolAnimating,
                    duration: Constant.rightSpinDuration,
                    action: store.toggleSymbolAnimation
                )
            }
            .frame(maxWidth: Constant.sideReelsWidth)
            
            SpinButton()
        }
    }
}
