import Foundation

public struct Episode: Hashable {
    
    let date: Date
    let title: String
    let desc: String
    let time: TimeInterval
    
    init(date: Date, title: String, desc: String, time: TimeInterval) {
        self.date = date
        self.title = title
        self.desc = desc
        self.time = time
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(title)
        hasher.combine(date)
    }
    
    public static func == (lhs: Episode, rhs: Episode) -> Bool {
        lhs.title == rhs.title && lhs.date == lhs.date
    }
}
