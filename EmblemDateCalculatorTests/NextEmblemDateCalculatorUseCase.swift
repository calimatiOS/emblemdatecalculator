import XCTest
import EmblemDateCalculator

class NextEmblemDateCalculatorUseCase: XCTestCase {

    func test_WhenDateIsOct182019_WhenIsNextFighterDate_ReturnsNov082019() {
           
           AssertThatForBaseDateThe(calculatedEmblem: .Fighter, expectedDay: 8, expectedMonth: 11, expectedYear: 2019)
           
       }
    
    
    func test_WhenDateIsOct182019_WhenIsNextSupportDate_ReturnsOct212019() {
        
        AssertThatForBaseDateThe(calculatedEmblem: .Support, expectedDay: 21, expectedMonth: 10, expectedYear: 2019)
        
    }
    
    func test_WhenDateIsOct182019_WhenIsNextMarksmanDate_ReturnsOct242019() {
        
        AssertThatForBaseDateThe(calculatedEmblem: .Marksman, expectedDay: 24, expectedMonth: 10, expectedYear: 2019)
           
    }
    
    func test_WhenDateIsOct182019_WhenIsNextTankDate_ReturnsOct272019() {
          
          AssertThatForBaseDateThe(calculatedEmblem: .Tank, expectedDay: 27, expectedMonth: 10, expectedYear: 2019)
             
      }
    
    func test_WhenDateIsOct182019_WhenIsNextJungleDate_ReturnsOct302019() {
             
             AssertThatForBaseDateThe(calculatedEmblem: .Jungle, expectedDay: 30, expectedMonth: 10, expectedYear: 2019)
                
    }
    
    func test_WhenDateIsOct182019_WhenIsNextAssasinDate_ReturnsNov022019() {
                
        AssertThatForBaseDateThe(calculatedEmblem: .Assassin, expectedDay: 2, expectedMonth: 11, expectedYear: 2019)
                   
    }
    
    func test_WhenDateIsOct182019_WhenIsNextMageDate_ReturnsNov052019() {
                   
           AssertThatForBaseDateThe(calculatedEmblem: .Mage, expectedDay: 5, expectedMonth: 11, expectedYear: 2019)
                      
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
