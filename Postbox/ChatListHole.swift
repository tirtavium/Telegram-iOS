import Foundation

public struct ChatListHole: Comparable, CustomStringConvertible {
    public let index: MessageIndex
    
    public init(index: MessageIndex) {
        self.index = index
    }
    
    public var description: String {
        return "ChatListHole(\(self.index.id), \(self.index.timestamp))"
    }
}

public func ==(lhs: ChatListHole, rhs: ChatListHole) -> Bool {
    return lhs.index == rhs.index
}

public func <(lhs: ChatListHole, rhs: ChatListHole) -> Bool {
    return lhs.index < rhs.index
}
