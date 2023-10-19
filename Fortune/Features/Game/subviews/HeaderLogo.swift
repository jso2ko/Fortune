import SwiftUI

struct HeaderLogo: View {
    var body: some View {
        Image.logo
            .fitted()
            .padding(.horizontal)
            .dropShadow()
    }
}
