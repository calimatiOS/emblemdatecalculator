import Foundation

public class EmblemDater {
     
    public init() { }
    
    public func getDefaultDate() ->Date {
        return Date(timeIntervalSince1970: 0)
    }
    
    public func getNextAvailableDate(for emblem:Emblem, inCurrentDate date:Date) -> Date {
        if(emblem == .Support) {
           return getDate(forDay: 21, andMonth: 10, andYear: 2019 )
        }
        if(emblem == .Marksman) {
          return getDate(forDay: 24, andMonth: 10, andYear: 2019 )
        }
        return getDate(forDay: 27, andMonth: 10, andYear: 2019 )
    }
    
    public func getDate(forDay day:Int? = 18, andMonth month:Int? = 10, andYear year:Int? = 2019, andHour hour:Int? = 3, andMinute minute:Int? = 0, andSeconds seconds:Int? = 0, inTimezone timezone:TimeZone = TimeZone(abbreviation: "BOT") ?? TimeZone.current) -> Date {
        var dateComponents = DateComponents()
                      dateComponents.day = day
                      dateComponents.month = month
                      dateComponents.year = year
                      dateComponents.hour = hour
                      dateComponents.minute = minute
                      dateComponents.second = seconds
                      dateComponents.timeZone = timezone
                      
                      let calendar = Calendar.current
                      let baseDate = calendar.date(from: dateComponents)
      
        return baseDate ?? getDefaultDate()
    }
    
    fileprivate func calculateEmblem(_ baseDate: Date, _ date: Date?) -> Emblem {
        let emblems = Emblem.allCases
        let calendar = Calendar.current
        var calculatedDate = baseDate
        
        var emblemIndex = 0
        var days = 0
        
        if let date = date {
            while calculatedDate < date {
                calculatedDate = calendar.date(byAdding: .day, value: 1, to: calculatedDate) ?? getDefaultDate()
                days += 1
                if days != 0 && days % 3 == 0 {
                    emblemIndex = (emblemIndex + 1) % emblems.count
                }
            
            }
            return emblems[emblemIndex]
        }
        
        
        return .Fighter
    }
    
    public func getEmblem(forDate date: Date) -> Emblem {
        let baseDate = self.getDate()
        return calculateEmblem(baseDate, date)
    }
}
