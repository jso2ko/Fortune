import SwiftUI

struct ModalContent: View {
    @EnvironmentObject var store: GameStore
    
    var body: some View {
        VStack(spacing: Constant.modalContentSpacing) {
            Image.end
                .fitted()
                .frame(maxHeight: Constant.modalImageHeight)
            
            Text.gameOverMessage
                .foregroundStyle(.gray)
                .roundedBodyFont()
                .lineLimit(Constant.textLineLimit)
                .multilineTextAlignment(.center)
            
            Button {
                store.toggleModalAnimation()
                store.toggleGameOverState()
                store.refillCoins()
            } label: {
                Text.newGameLabel
                    .roundedBodyFont()
                    .fontWeight(.semibold)
                    .tint(.darkPink)
                    .borderedCapsuleStyle()
            }
        }
    }
}
