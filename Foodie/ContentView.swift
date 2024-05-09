import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(.foodie)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
                .shadow(radius: 8)
                .offset(y: 10)
            
            ZStack {
                VStack {
                    Image(systemName: "hourglass")
                        .font(.largeTitle)
                    
                    Text("Tasting more food...")
                        .font(.title)
                }
                .fontWeight(.bold)
                .frame(maxHeight: 600)
                
                VStack {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(.blue)
                        .frame(width: 300, height: 300)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.regularMaterial)
    }
}

#Preview {
    ContentView()
}
