import XCTest
import EmblemDateCalculator

class EmblemDateCalculatorTests: XCTestCase {

    func test_getCurrentEmblemForNilDate_throwsNilError() {
        let sut = makeSUT()
        XCTAssertThrowsError(try sut.getEmblem(forDate: nil))
    }
    
    func test_getCurrentEmblemForValidDate_DoesNotThrowError() {
        let sut = makeSUT()
        let date = Date()
        XCTAssertNoThrow(try sut.getEmblem(forDate: date))
    }
    
    func test_getCurrentEmblem_WhenDateIs_Oct182019TZGMTMinus5At300() {
        let sut = makeSUT()
        var dateComponents = DateComponents()
        dateComponents.day = 18
        dateComponents.month = 10
        dateComponents.year = 2019
        dateComponents.hour = 3
        dateComponents.minute = 0
        dateComponents.second = 0
        dateComponents.timeZone = TimeZone(abbreviation: "BOT")
        
        let calendar = Calendar.current
        let date = calendar.date(from: dateComponents)
        
        let emblem = try? sut.getEmblem(forDate: date)
        
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, "Fighter")
        
    }
    
    func test_getCurrentEmblem_WhenDateIs_Oct212019TZGMTMinus5At300() {
        let sut = makeSUT()
        var dateComponents = DateComponents()
        dateComponents.day = 21
        dateComponents.month = 10
        dateComponents.year = 2019
        dateComponents.hour = 3
        dateComponents.minute = 0
        dateComponents.second = 0
        dateComponents.timeZone = TimeZone(abbreviation: "BOT")
        
        let calendar = Calendar.current
        let date = calendar.date(from: dateComponents)
        
        let emblem = try? sut.getEmblem(forDate: date)
        
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, "Support")
    }

    
    // MARK: - Helpers
    func makeSUT() -> EmblemDater {
        return EmblemDater()
    }
    

}
