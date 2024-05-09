import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Tap me!") {
                print(type(of: self.body))
            }
            .frame(width: 100, height: 100)
            .background(.red)
            
            Text("Hello, world!")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
                .padding()
                .background(.yellow)
        }
        .font(.largeTitle)
        .fontWeight(.black)
    }
}

#Preview {
    ContentView()
}
