import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(.red)
                .frame(width: 100, height: 100)
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(.green)
                .frame(width: 100, height: 100)
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(.blue)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    ContentView()
}
