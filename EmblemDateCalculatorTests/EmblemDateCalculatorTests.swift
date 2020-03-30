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
    
    func test_getCurrentEmblem_WhenDateIs_Oct182019TZGMTMinus5At300_ShouldReturnFighter() {
        let emblem = makeSUT(forDay: 18)
    
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, Emblem.Fighter)
        
    }
    
    func test_getCurrentEmblem_WhenDateIs_Oct212019TZGMTMinus5At300_ShouldReturnSupport() {
         let emblem = makeSUT(forDay: 21)
          
        
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, Emblem.Support)
    }

    func test_getCurrentEmblem_WhenDateIs_Oct242019TZGMTMinus5At300_ShouldReturnMarksman() {
        
        let emblem = makeSUT(forDay: 24)
        
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, Emblem.Marksman)
        
    }
    
    func test_getCurrentEmblem_WhendateIs_Oct272019TZGMTMinus5At300_ShouldReturnTank() {
        let emblem = makeSUT(forDay: 27)
        
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, Emblem.Tank)
    }
    
    func test_getCurrentEmblemWhenDateIs_Oct302019TZGMTMinus5At300_ShouldReturnJungle() {
        let emblem = makeSUT(forDay: 30)
        
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, Emblem.Jungle)
    }
    
    func test_getCurrentEmblemWhenDateIs_Nov022019TZGMTMinus5At300_ShouldReturnAssassin() {
        let emblem = makeSUT(forDay: 2, andMonth: 11)
        
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, Emblem.Assassin)
    }
    
    // MARK: - Helpers
    func makeSUT() -> EmblemDater {
        return EmblemDater()
    }
    
    func makeSUT (forDay day:Int? = 18, andMonth month:Int? = 10) -> Emblem {
        let sut = makeSUT()
        let date = sut.getDate(forDay: day, andMonth: month)
        let emblem = try? sut.getEmblem(forDate: date)
        return emblem!
    }
    

}
