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
        
        let date = sut.getDate()
        
        let emblem = try? sut.getEmblem(forDate: date)
        
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, "Fighter")
        
    }
    
    func test_getCurrentEmblem_WhenDateIs_Oct212019TZGMTMinus5At300() {
        let sut = makeSUT()
       
        let date = sut.getDate(forDay: 21)
        
        let emblem = try? sut.getEmblem(forDate: date)
        
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, "Support")
    }

    func test_getCurrentEmblem_WhenDateIs_Oct242019TZGMTMinus5At300_ShouldReturnMarksman() {
        
        let sut = makeSUT()
        let date = sut.getDate(forDay: 24)
        
        let emblem = try? sut.getEmblem(forDate: date)
        
        XCTAssertNotNil(emblem)
        XCTAssertEqual(emblem, "Marksman")
        
    }
    
    // MARK: - Helpers
    func makeSUT() -> EmblemDater {
        return EmblemDater()
    }
    

}
