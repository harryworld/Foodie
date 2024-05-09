import SwiftUI

struct ContentView: View {
    var foods = [
        Food(image: "fruit_bowl", name: "Fruit Bowl", restaurant: "Pun Pun Market"),
        Food(image: "papaya_salad", name: "Som Tum", restaurant: "Pun Pun Market"),
        Food(image: "pencake", name: "Pencake", restaurant: "Pun Pun Market"),
        Food(image: "mango_sticky_rice", name: "Mango Sticky Rice", restaurant: "Central Plaza Airport"),
        Food(image: "pineapple_rice", name: "Pineapple Fried Rice", restaurant: "Cooking Love"),
        Food(image: "thai_sausage", name: "Northern Thai Sausage", restaurant: "Saturday Night Market"),
    ].shuffled()
    
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
                
                ForEach(foods) { food in
                    CardView(
                        image: food.image,
                        food: food.name,
                        restaurant: food.restaurant
                    )
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
