import SwiftUI

struct GameView: View {
    @StateObject private var store = GameStore()
    
    var body: some View {
        ZStack {
            MixedGradient(colors: [.darkPink, .darkPurple])
            VStack(spacing: Constant.gameSpacing) {
                HeaderLogo()
                Spacer()
                PointsTracker()
                Spacer()
                SlotMachine()
                Spacer()
            }
            .padding()
            .frame(maxWidth: Constant.contentMaxWidth)
            .screenBlur(state: store.isGameOver)
            
            // Modal
            if store.isGameOver {
                ZStack {
                    Color.transparentBlack.ignoresSafeArea()
                    ModalWindow()
                }
            }
        }
        .environmentObject(store)
        .preferredColorScheme(.dark)
    }
}
