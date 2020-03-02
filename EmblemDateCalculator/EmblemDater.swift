import Foundation

public class EmblemDater {
     
    public init() { }
    
    public func getEmblem(forDate date: Date?) throws -> String {
        if(date == nil) {
            throw NSError(domain: "anyError", code: 0)
        }
        
        var dateComponents = DateComponents()
               dateComponents.day = 18
               dateComponents.month = 10
               dateComponents.year = 2019
               dateComponents.hour = 3
               dateComponents.minute = 0
               dateComponents.second = 0
               dateComponents.timeZone = TimeZone(abbreviation: "BOT")
               
               let calendar = Calendar.current
               let baseDate = calendar.date(from: dateComponents)
        if(baseDate == date) {
             return "Fighter"
        }
      return "Support"
    }
}
