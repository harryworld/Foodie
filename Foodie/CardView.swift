import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(.blue)
                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    CardView()
}
