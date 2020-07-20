import Foundation

public class EmblemDater {
    
    let emblems = Emblem.allCases
    
    public init() { }
    
    public func getDefaultDate() ->Date {
        return Date(timeIntervalSince1970: 0)
    }
    
    public func Add(days:Int, toDate date:Date) -> Date {
        let calendar = Calendar.current
        let dateWithNoTime = calendar.date(byAdding: .day, value: days, to: date)
        
        return dateWithNoTime ?? getDefaultDate()
    }
    
    public func calculateDateWithTime(numberOfDays:Int, emblem:Emblem, emblemIndex:Int, date:Date, calendar:Calendar) -> Date {
        if(numberOfDays > 0 && emblem != .Fighter) {
                       let dateWithNoTime = Add(days: 21 - ((numberOfDays % 21) - 3) + 3 * (emblemIndex - 1), toDate: date)
                      let dateWithTime = SetTime(hour: 3, minute: 0, second: 0, forDate: dateWithNoTime, in: calendar)
                    return dateWithTime
               }
        
        let dateWithNoTime = Add(days: (3 * emblemIndex) - (numberOfDays % 21), toDate: date)
        let dateWithTime = SetTime(hour: 3, minute: 0, second: 0, forDate: dateWithNoTime, in: calendar)
               return dateWithTime
    }

    
    public func SetTime(hour:Int, minute:Int, second:Int, forDate dateWithNoTime:Date?, in calendar:Calendar) -> Date {
        
        if let dateWithNoTime = dateWithNoTime {
                  let dateWithTime = calendar.date(bySettingHour: hour, minute: minute, second: second, of: dateWithNoTime)
                        if let dateWithTime = dateWithTime {
                            return dateWithTime
                        }
              }
        return getDefaultDate()
    }
    
    public func getNextAvailableDate(for emblem:Emblem, inCurrentDate date:Date) -> Date {
        
        var emblemIndex = emblems.firstIndex(of: emblem) ?? 0
        if emblemIndex == 0 {
            emblemIndex = 7
        }
        
        let calendar = Calendar.current
        let baseDate = getDate()
        
        let numberOfDays = calendar.dateComponents([.day], from: baseDate, to: date).day ?? 0
        
        
        return calculateDateWithTime(numberOfDays: numberOfDays, emblem: emblem, emblemIndex: emblemIndex, date: date, calendar: calendar)
        
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
        
        var calculatedDate = baseDate
        
        var emblemIndex = 0
        var days = 0
        
        if let date = date {
            while calculatedDate < date {
                calculatedDate = Add(days: 1, toDate: calculatedDate)
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
