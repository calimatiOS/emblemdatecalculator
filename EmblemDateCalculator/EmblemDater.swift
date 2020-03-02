import Foundation

public class EmblemDater {
     
    public init() { }
    
    public func getEmblem(forDate date: Date?) throws {
        if(date == nil) {
            throw NSError(domain: "anyError", code: 0)
        }
      
    }
}
