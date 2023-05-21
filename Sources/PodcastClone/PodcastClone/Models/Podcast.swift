import Foundation

public struct Podcast : Hashable {
    
    let name: String
    let author: String
    let date: Date
    let authorImage: String?
    let image: String
    let type: [String]
    let rating: Float
    let number: Int
    var episodes: [Episode]?
    
    public func hash(into hasher: inout Hasher) {
            hasher.combine(name)
            hasher.combine(author)
            hasher.combine(date)
        }
        
        public static func == (lhs: Podcast, rhs: Podcast) -> Bool {
            lhs.name == rhs.name &&
            lhs.author == rhs.author &&
            lhs.date == rhs.date
        }
}
