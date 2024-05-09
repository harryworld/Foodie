import SwiftUI

struct CardView: View {
    var image: String = "papaya_salad"
    var food: String = "Papaya Salad"
    var restaurant: String = "Pun Pun Market"
    
    @State var offset: CGSize = CGSize.zero
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 600)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Spacer()
                
                Text(food)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Text(restaurant)
                    .font(.body)
            }
            .frame(height: 600)
            .padding()
            .padding(.bottom, 20)
            .foregroundStyle(.white)
        }
        .shadow(radius: 8)
        .padding()
        .rotationEffect(Angle(degrees: Double(offset.width / 10)))
        .offset(offset)
        .gesture(
            DragGesture()
                .onChanged { self.offset = $0.translation }
                .onEnded {
                    if $0.translation.width < -100 {
                        self.offset = .init(width: -1000, height: 0)
                    } else if $0.translation.width > 100 {
                        self.offset = .init(width: 1000, height: 0)
                    } else {
                        self.offset = .zero
                    }
                }
        )
        .animation(.default, value: offset)
    }
}

#Preview {
    CardView()
}
