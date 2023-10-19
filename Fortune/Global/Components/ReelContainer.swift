import SwiftUI

struct ReelContainer: View {
    let id: String
    let state: Bool
    let duration: Double
    let action: () -> Void
    
    var body: some View {
        ZStack {
            Image.reel
                .hexagonDimensions()
            
            Image(id)
                .hexagonDimensions()
                .positionalOpacity(state: state)
                .animation(.easeOut(duration: duration), value: state)
                .onAppear(perform: action)
        }
    }
}
