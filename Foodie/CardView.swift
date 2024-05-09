import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Image(.papayaSalad)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 600)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Spacer()
                
                Text("Papaya Salad")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Text("Pun Pun Market")
                    .font(.body)
            }
            .frame(height: 600)
            .padding()
            .padding(.bottom, 20)
            .foregroundStyle(.white)
        }
        .shadow(radius: 8)
        .padding()
    }
}

#Preview {
    CardView()
}
