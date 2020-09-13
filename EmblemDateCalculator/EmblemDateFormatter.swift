import Foundation

public class EmblemDateFormatter {
    public init() { }
     public func getFriendlyDate(_ date:Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMMM d, yyyy 'at' h:mm a"
        let friendlydDate = dateFormatter.string(from: date)
        return friendlydDate
    }
}
