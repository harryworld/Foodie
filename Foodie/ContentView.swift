import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "sparkles")
                .imageScale(.large)
                .foregroundStyle(.red)
                .shadow(radius: 10)
            
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
                .fontWeight(.black)
            
            VStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.blue)
                    .frame(width: 300, height: 300)
                Text("1st lesson")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
