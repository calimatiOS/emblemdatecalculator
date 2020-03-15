import Foundation

public class EmblemDater {
     
    public init() { }
    
    public func getDate(forDay day:Int? = 18) -> Date? {
        var dateComponents = DateComponents()
                      dateComponents.day = day
                      dateComponents.month = 10
                      dateComponents.year = 2019
                      dateComponents.hour = 3
                      dateComponents.minute = 0
                      dateComponents.second = 0
                      dateComponents.timeZone = TimeZone(abbreviation: "BOT")
                      
                      let calendar = Calendar.current
                      let baseDate = calendar.date(from: dateComponents)
        if baseDate != nil {
            return baseDate
        }
        return nil
    }
    
    public func getEmblem(forDate date: Date?) throws -> String {
        if(date == nil) {
            throw NSError(domain: "anyError", code: 0)
        }
        
        let baseDate = self.getDate() // Day 18
        let supportBaseDate = self.getDate(forDay: 21) //Day 21
        if(baseDate == date) {
            return "Fighter"
        }
        if (supportBaseDate == date) {
            return "Support"
        }
        return "Marksman"
    }
}
