import Foundation

public protocol EmblemFormatter {
    func getFriendlyDate(_ date:Date) -> String
}

public class EmblemDateFormatter: EmblemFormatter {
    public init() { }
     public func getFriendlyDate(_ date:Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMMM d, yyyy 'at' h:mm a"
        let friendlydDate = dateFormatter.string(from: date)
        return friendlydDate
    }
}
