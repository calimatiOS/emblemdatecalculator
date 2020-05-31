import XCTest
import EmblemDateCalculator

class NextEmblemDateCalculatorUseCase: XCTestCase {
    
    func test_WhenDateIsOct182019_WhenIsNextFighterDate_ReturnsNov082019() {
        
        AssertFor(theCalculatedEmblemIs: .Fighter, inDay: 8, inMonth: 11, inYear: 2019)
    }
    
    
    func test_WhenDateIsOct182019_WhenIsNextSupportDate_ReturnsOct212019() {
        
        AssertFor(theCalculatedEmblemIs: .Support, inDay: 21, inMonth: 10, inYear: 2019)
    }
    
    func test_WhenDateIsOct182019_WhenIsNextMarksmanDate_ReturnsOct242019() {
        
        AssertFor(theCalculatedEmblemIs: .Marksman, inDay: 24, inMonth: 10, inYear: 2019)
        
    }
    
    func test_WhenDateIsOct182019_WhenIsNextTankDate_ReturnsOct272019() {
        
        AssertFor(theCalculatedEmblemIs: .Tank, inDay: 27, inMonth: 10, inYear: 2019)
        
    }
    
    func test_WhenDateIsOct182019_WhenIsNextJungleDate_ReturnsOct302019() {
        
        
        AssertFor(theCalculatedEmblemIs: .Jungle, inDay: 30, inMonth: 10, inYear: 2019)
        
    }
    
    func test_WhenDateIsOct182019_WhenIsNextAssasinDate_ReturnsNov022019() {
        
        AssertFor(theCalculatedEmblemIs: .Assassin, inDay: 2, inMonth: 11, inYear: 2019)
        
    }
    
    func test_WhenDateIsOct182019_WhenIsNextMageDate_ReturnsNov052019() {
        
        AssertFor(theCalculatedEmblemIs: .Mage, inDay: 5, inMonth: 11, inYear: 2019)
        
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
    
    func AssertFor(currentDay day:Int? = 18, currentMonth month:Int? = 10, currentyear year:Int? = 2019,   theCalculatedEmblemIs emblem:Emblem, inDay expectedDay:Int,  inMonth expectedMonth:Int, inYear expectedYear:Int) {
        
        //Arrange
        let sut = EmblemDater()
        let currentDate = sut.getDate(forDay: day, andMonth: month, andYear: year)
        let emblemToBeCalculated = emblem
        let expectedDateEmblem = sut.getDate(forDay: expectedDay , andMonth: expectedMonth, andYear: expectedYear)
        
        //Act
        let resultEmblemDate = sut.getNextAvailableDate(for: emblemToBeCalculated, inCurrentDate: currentDate)
        
        //Assert
        XCTAssertEqual(expectedDateEmblem, resultEmblemDate)
        
    }
    
}
