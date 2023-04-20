import Foundation

final class GameStore {
    static let shared = GameStore()
    private init() {}
    
    var teams = [Team(name: "Ковбои", image: "🤠"),
                 Team(name: "Стройняшки", image: "🍔")]
    var topics = [Category(name: "Животные", image: "🐸"),
                  Category(name: "Еда", image: "🍔"),
                  Category(name: "Личности", image: "🤠"),
                  Category(name: "Хобби", image: "💅")]
}

