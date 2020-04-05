import Foundation

public class EmblemDater {
     
    public init() { }
    
    public func getDate(forDay day:Int? = 18, andMonth month:Int? = 10) -> Date? {
        var dateComponents = DateComponents()
                      dateComponents.day = day
                      dateComponents.month = month
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
    
    fileprivate func calculateEmblem(_ baseDate: Date?, _ date: Date?) -> Emblem {
        let emblems = Emblem.allCases
        let calendar = Calendar.current
        var emblemIndex = 0
        
        for _ in emblems {
            if(calendar.date(byAdding: .day, value: emblemIndex*3, to: baseDate!)  == date) {
                       return emblems[emblemIndex]
                   }
            emblemIndex += 1
        }
        return .Fighter
    }
    
    public func getEmblem(forDate date: Date?) -> Emblem {
        if(date == nil) {
            return .Fighter
        }
       
        let baseDate = self.getDate()
        return calculateEmblem(baseDate, date)
    }
}
