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
        XCTAssertEqual(emblem, "Fighter")
        
    }
    
    func test_getCurrentEmblem_WhenDateIs_Oct212019TZGMTMinus5At300_ShouldReturnSupport() {
         let emblem = makeSUT(forDay: 21)
          
        
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, "Support")
    }

    func test_getCurrentEmblem_WhenDateIs_Oct242019TZGMTMinus5At300_ShouldReturnMarksman() {
        
        let emblem = makeSUT(forDay: 24)
        
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, "Marksman")
        
    }
    
    func test_getCurrentEmblem_WhendateIs_Oct272019TZGMTMinus5At300_ShouldReturnTank() {
        let emblem = makeSUT(forDay: 27)
        
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, "Tank")
    }
    
    // MARK: - Helpers
    func makeSUT() -> EmblemDater {
        return EmblemDater()
    }
    
    func makeSUT (forDay day:Int? = 18) -> String? {
        let sut = makeSUT()
        let date = sut.getDate(forDay: day)
        let emblem = try? sut.getEmblem(forDate: date)
        return emblem
    }
    

}
