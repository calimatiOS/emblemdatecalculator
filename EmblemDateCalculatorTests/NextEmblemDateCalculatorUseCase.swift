import XCTest
import EmblemDateCalculator

class NextEmblemDateCalculatorUseCase: XCTestCase {

    func test_WhenDateIsOct182019_WhenIsNextSupportDate_ReturnsOct212019() {
        
        //Arrange
        let sut = EmblemDater()
        let currentDate = sut.getDate()
        let emblemToBeCalculated = Emblem.Support
        let expectedDateEmblem = sut.getDate(forDay: 21, andMonth: 10, andYear: 2019)
        
        //Act
        let resultEmblemDate = sut.getNextAvailableDate(for: emblemToBeCalculated, inCurrentDate: currentDate)
        
        //Assert
        XCTAssertEqual(expectedDateEmblem, resultEmblemDate)
        
    }
    
    func test_WhenDateIsOct182019_WhenIsNextMarksmanDate_ReturnsOct242019() {
           
           //Arrange
           let sut = EmblemDater()
           let currentDate = sut.getDate()
           let emblemToBeCalculated = Emblem.Marksman
           let expectedDateEmblem = sut.getDate(forDay: 24, andMonth: 10, andYear: 2019)
           
           //Act
           let resultEmblemDate = sut.getNextAvailableDate(for: emblemToBeCalculated, inCurrentDate: currentDate)
           
           //Assert
           XCTAssertEqual(expectedDateEmblem, resultEmblemDate)
           
       }

}
