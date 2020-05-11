import XCTest
import EmblemDateCalculator

class NextEmblemDateCalculatorUseCase: XCTestCase {

    func test_WhenDateIsOct182019_WhenIsNextSupportDate_ReturnsOct212019() {
        
        AssertThatForBaseDateThe(calculatedEmblem: .Support, expectedDay: 21, expectedMonth: 10, expectedYear: 2019)
      
        
    }
    
    func test_WhenDateIsOct182019_WhenIsNextMarksmanDate_ReturnsOct242019() {
        
        AssertThatForBaseDateThe(calculatedEmblem: .Marksman, expectedDay: 24, expectedMonth: 10, expectedYear: 2019)
           
       }
    
    //MARK: -- Helpers
    
    func AssertThatForBaseDateThe(calculatedEmblem emblem:Emblem, expectedDay:Int, expectedMonth:Int, expectedYear:Int) {
        
        //Arrange
        let sut = EmblemDater()
                 let currentDate = sut.getDate()
                 let emblemToBeCalculated = emblem
                 let expectedDateEmblem = sut.getDate(forDay: expectedDay , andMonth: expectedMonth, andYear: expectedYear)
                 
                 //Act
                 let resultEmblemDate = sut.getNextAvailableDate(for: emblemToBeCalculated, inCurrentDate: currentDate)
                 
                 //Assert
                 XCTAssertEqual(expectedDateEmblem, resultEmblemDate)
        
    }

}
