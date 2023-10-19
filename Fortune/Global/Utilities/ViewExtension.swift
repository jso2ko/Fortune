import SwiftUI

extension View {
    func dropShadow() -> some View {
        self.shadow(color: .transparentBlack, radius: 0, x: 0, y: 4)
    }
    
    func heavyTitleFont() -> some View {
        self.font(.system(.title, design: .rounded, weight: .heavy))
    }
    
    func roundedBodyFont() -> some View {
        self.font(.system(.body, design: .rounded))
    }
    
    func screenBlur(state: Bool) -> some View {
        self.blur(radius: state ? 4 : 0, opaque: false)
    }
}

// MARK: - Multiples

extension View {
    func positionalOpacity(state: Bool, offset: CGFloat = -48) -> some View {
        self.opacity(state ? 1 : 0)
            .offset(y: state ? 0 : offset)
    }
    
    func amountLabelStyle(alignment: TextAlignment) -> some View {
        self.font(.system(.caption2, design: .rounded, weight: .bold))
            .multilineTextAlignment(alignment)
    }
    
    func amountNumberStyle() -> some View {
        self.heavyTitleFont()
            .dropShadow()
    }
    
    func borderedCapsuleStyle() -> some View {
        self.padding(.horizontal, 12)
            .padding(.vertical, 8)
            .frame(minWidth: Constant.contentMinWidth)
            .background(
                Capsule()
                    .strokeBorder(lineWidth: 1.75)
                    .foregroundStyle(.darkPink)
            )
    }
}
