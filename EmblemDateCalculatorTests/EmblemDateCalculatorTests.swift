import XCTest

class EmblemDater {
    func getEmblem(forDate date: Date?) throws {
        if(date == nil) {
            throw NSError(domain: "anyError", code: 0)
        }
      
    }
}

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
