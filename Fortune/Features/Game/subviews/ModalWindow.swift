import SwiftUI

struct ModalWindow: View {
    @EnvironmentObject var store: GameStore
    
    var body: some View {
        VStack {
            Text.gameOverTitle
                .modalTitleStyle()
            
            Spacer()
            ModalContent()
            Spacer()
        }
        .windowDimensions()
        .springFX(state: store.isModalAnimating)
        .onAppear(perform: store.toggleModalAnimation)
    }
}

// MARK: - Modifiers

private extension View {
    func modalTitleStyle() -> some View {
        self.foregroundStyle(.white)
            .heavyTitleFont()
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.darkPink)
    }
    
    func windowDimensions() -> some View {
        self.frame(
            minWidth: 280, idealWidth: 280, maxWidth: 320,
            minHeight: 260, idealHeight: 280, maxHeight: 320,
            alignment: .center
        )
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .dropShadow()
    }
    
    func springFX(state: Bool) -> some View {
        self.positionalOpacity(state: state, offset: -100)
            .animation(
                .spring(response: 0.6, dampingFraction: 1, blendDuration: 1),
                value: state
            )
    }
}
