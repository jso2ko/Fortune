import SwiftUI

struct AmountCapsule: View {
    let value: Int
    var isGameActive = false
    
    var body: some View {
        HStack {
            if isGameActive {
                Text.coinsLabel
                    .amountLabelStyle(alignment: .trailing)
                
                Text(String(value))
                    .amountNumberStyle()
            } else {
                Text(String(value))
                    .amountNumberStyle()
                
                Text.highScoreLabel
                    .amountLabelStyle(alignment: .leading)
            }
        }
        .padding(.horizontal, Constant.capsulePaddingX)
        .padding(.vertical, Constant.capsulePaddingY)
        .frame(minWidth: Constant.contentMinWidth)
        .background(Capsule().foregroundStyle(.transparentBlack))
    }
}
