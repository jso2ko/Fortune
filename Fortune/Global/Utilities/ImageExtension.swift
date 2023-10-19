import SwiftUI

extension Image {
    static let end = Image("end")
    static let logo = Image("logo")
    static let reel = Image("reel")
    static let spin = Image("spin")
}

// MARK: - Functions

extension Image {
    func fitted() -> some View {
        self.resizable()
            .scaledToFit()
    }
    
    func hexagonDimensions() -> some View {
        self.fitted()
            .frame(
                minWidth: 140, idealWidth: 200, maxWidth: 220,
                minHeight: 130, idealHeight: 190, maxHeight: 200,
                alignment: .center
            )
            .dropShadow()
    }
}
