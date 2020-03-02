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

    
    // MARK: - Helpers
    func makeSUT() -> EmblemDater {
        return EmblemDater()
    }
    

}
