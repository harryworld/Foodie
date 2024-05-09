import Foundation

struct Food: Identifiable {
    let id = UUID()
    var image: String
    var name: String
    var restaurant: String
}
