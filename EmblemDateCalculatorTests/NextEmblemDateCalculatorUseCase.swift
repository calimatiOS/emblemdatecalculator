import XCTest
import EmblemDateCalculator

class NextEmblemDateCalculatorUseCase: XCTestCase {
    
    func test_WhenDateIsOct182019_WhenIsNextFighterDate_ReturnsNov082019() {
        
        AssertFor(theCalculatedEmblemIs: .Fighter, inDay: 8, inMonth: 11, inYear: 2019)
    }
    
    
    func test_WhenDateIsOct192019_WhenIsNextFighterDate_ReturnsNov082019() {
        
        AssertFor(currentDay: 19, theCalculatedEmblemIs: .Fighter, inDay: 8, inMonth: 11, inYear: 2019)
    }
    
    func test_WhenDateIsOct202019_WhenIsNextFighterDate_ReturnsNov082019() {
        
        AssertFor(currentDay: 20, theCalculatedEmblemIs: .Fighter, inDay: 8, inMonth: 11, inYear: 2019)
    }
    
    func test_WhenDateIsNov082019_WhenIsNextFighterDate_ReturnsNov292019() {
        
        AssertFor(currentDay: 8,currentMonth: 11 , theCalculatedEmblemIs: .Fighter, inDay: 29, inMonth: 11, inYear: 2019)
    }
    
    func test_WhenDateIsNov092019_WhenIsNextFighterDate_ReturnsNov292019() {
        
        AssertFor(currentDay: 9,currentMonth: 11 , theCalculatedEmblemIs: .Fighter, inDay: 29, inMonth: 11, inYear: 2019)
    }
    
    func test_WhenDateIsNov292019_WhenIsNextFighterDate_ReturnsNov292019() {
        
        AssertFor(currentDay: 29,currentMonth: 11 , theCalculatedEmblemIs: .Fighter, inDay: 20, inMonth: 12, inYear: 2019)
    }
    
    func test_WhenDateIsDec012019_WhenIsNextFighterDate_ReturnsDec202019() {
        
        AssertFor(currentDay: 1,currentMonth: 12 , theCalculatedEmblemIs: .Fighter, inDay: 20, inMonth: 12, inYear: 2019)
    }
    
    func test_WhenDateIsNov292019_WhenIsNextFighterDate_ReturnsDec202019() {
        
        AssertFor(currentDay: 10,currentMonth: 11 , theCalculatedEmblemIs: .Fighter, inDay: 29, inMonth: 11, inYear: 2019)
    }
    
    func test_WhenDateIsOct182019_WhenIsNextSupportDate_ReturnsOct212019() {
        
        AssertFor(theCalculatedEmblemIs: .Support, inDay: 21, inMonth: 10, inYear: 2019)
    }
    
    func test_WhenDateIsOct212019_WhenIsNextSupportDate_ReturnsNov112019() {
        
        AssertFor(currentDay: 21, theCalculatedEmblemIs: .Support, inDay: 11, inMonth: 11, inYear: 2019)
    }
    
    func test_WhenDateIsOct222019_WhenIsNextSupportDate_ReturnsNov112019() {
        
        AssertFor(currentDay: 22, theCalculatedEmblemIs: .Support, inDay: 11, inMonth: 11, inYear: 2019)
    }
    
    func test_WhenDateIsOct232019_WhenIsNextSupportDate_ReturnsNov112019() {
           
           AssertFor(currentDay: 23, theCalculatedEmblemIs: .Support, inDay: 11, inMonth: 11, inYear: 2019)
       }
    
   func test_WhenDateIsNov112019_WhenIsNextSupportDate_ReturnsDec022019() {
             
             AssertFor(currentDay: 11, currentMonth: 11, theCalculatedEmblemIs: .Support, inDay: 2, inMonth: 12, inYear: 2019)
         }
    
    func test_WhenDateIsNov122019_WhenIsNextSupportDate_ReturnsDec022019() {
              
              AssertFor(currentDay: 12, currentMonth: 11, theCalculatedEmblemIs: .Support, inDay: 2, inMonth: 12, inYear: 2019)
          }
    
    func test_WhenDateIsNov132019_WhenIsNextSupportDate_ReturnsDec022019() {
                 
                 AssertFor(currentDay: 13, currentMonth: 11, theCalculatedEmblemIs: .Support, inDay: 2, inMonth: 12, inYear: 2019)
             }
     
    
    
    func test_WhenDateIsOct182019_WhenIsNextMarksmanDate_ReturnsOct242019() {
        
        AssertFor(theCalculatedEmblemIs: .Marksman, inDay: 24, inMonth: 10, inYear: 2019)
        
    }
    
    func test_WhenDateIsOct242019_WhenIsNextMarksmanDate_ReturnsNov142019() {
             
             AssertFor(currentDay: 24, theCalculatedEmblemIs: .Marksman, inDay: 14, inMonth: 11, inYear: 2019)
    }

    
    func test_WhenDateIsOct252019_WhenIsNextMarksmanDate_ReturnsNov142019() {
             
             AssertFor(currentDay: 25, theCalculatedEmblemIs: .Marksman, inDay: 14, inMonth: 11, inYear: 2019)
    }
    
    func test_WhenDateIsOct262019_WhenIsNextMarksmanDate_ReturnsNov142019() {
              
              AssertFor(currentDay: 26, theCalculatedEmblemIs: .Marksman, inDay: 14, inMonth: 11, inYear: 2019)
     }
   
    func test_WhenDateIsOct182019_WhenIsNextTankDate_ReturnsOct272019() {
        
        AssertFor(theCalculatedEmblemIs: .Tank, inDay: 27, inMonth: 10, inYear: 2019)
        
    }
    
    func test_WhenDateIsOct272019_WhenIsNextTankDate_ReturnsNov172019() {
                
                AssertFor(currentDay: 27, theCalculatedEmblemIs: .Tank, inDay: 17, inMonth: 11, inYear: 2019)
       }
    
    func test_WhenDateIsOct282019_WhenIsNextTankDate_ReturnsNov172019() {
                  
                  AssertFor(currentDay: 28, theCalculatedEmblemIs: .Tank, inDay: 17, inMonth: 11, inYear: 2019)
         }
    
    func test_WhenDateIsOct292019_WhenIsNextTankDate_ReturnsNov172019() {
                    
                    AssertFor(currentDay: 29, theCalculatedEmblemIs: .Tank, inDay: 17, inMonth: 11, inYear: 2019)
           }
      
    
    func test_WhenDateIsOct182019_WhenIsNextJungleDate_ReturnsOct302019() {
        
        
        AssertFor(theCalculatedEmblemIs: .Jungle, inDay: 30, inMonth: 10, inYear: 2019)
        
    }
    
    func test_WhenDateIsOct302019_WhenIsNextJungleDate_ReturnsNov202019() {
                    
                    AssertFor(currentDay: 30, theCalculatedEmblemIs: .Jungle, inDay: 20, inMonth: 11, inYear: 2019)
           }
    
    func test_WhenDateIsOct312019_WhenIsNextJungleDate_ReturnsNov202019() {
                      
                      AssertFor(currentDay: 31, theCalculatedEmblemIs: .Jungle, inDay: 20, inMonth: 11, inYear: 2019)
             }
    
    
    func test_WhenDateIsNov012019_WhenIsNextJungleDate_ReturnsNov202019() {
                      
                      AssertFor(currentDay: 1, currentMonth: 11, theCalculatedEmblemIs: .Jungle, inDay: 20, inMonth: 11, inYear: 2019)
             }
    
    
    
    func test_WhenDateIsOct182019_WhenIsNextAssasinDate_ReturnsNov022019() {
        
        AssertFor(theCalculatedEmblemIs: .Assassin, inDay: 2, inMonth: 11, inYear: 2019)
        
    }
    
    func test_WhenDateIsNov022019_WhenIsNextAssasinDate_ReturnsNov232019() {
                      
        AssertFor(currentDay: 2, currentMonth: 11, theCalculatedEmblemIs: .Assassin, inDay: 23, inMonth: 11, inYear: 2019)
    }
    
    func test_WhenDateIsNov032019_WhenIsNextAssasinDate_ReturnsNov232019() {
                        
          AssertFor(currentDay: 3, currentMonth: 11, theCalculatedEmblemIs: .Assassin, inDay: 23, inMonth: 11, inYear: 2019)
      }
    
    func test_WhenDateIsNov042019_WhenIsNextAssasinDate_ReturnsNov232019() {
                         
           AssertFor(currentDay: 4, currentMonth: 11, theCalculatedEmblemIs: .Assassin, inDay: 23, inMonth: 11, inYear: 2019)
       }
    
    
    func test_WhenDateIsOct182019_WhenIsNextMageDate_ReturnsNov052019() {
        
        AssertFor(theCalculatedEmblemIs: .Mage, inDay: 5, inMonth: 11, inYear: 2019)
        
    }
    
    func test_WhenDateIsNov052019_WhenIsNextAssasinDate_ReturnsNov232019() {
                            
              AssertFor(currentDay: 5, currentMonth: 11, theCalculatedEmblemIs: .Mage, inDay: 26, inMonth: 11, inYear: 2019)
    }
    
    func test_WhenDateIsNov062019_WhenIsNextAssasinDate_ReturnsNov232019() {
                               
                 AssertFor(currentDay: 6, currentMonth: 11, theCalculatedEmblemIs: .Mage, inDay: 26, inMonth: 11, inYear: 2019)
       }
    
    func test_WhenDateIsNov072019_WhenIsNextAssasinDate_ReturnsNov232019() {
                                  
                    AssertFor(currentDay: 7, currentMonth: 11, theCalculatedEmblemIs: .Mage, inDay: 26, inMonth: 11, inYear: 2019)
          }
    
    
    //MARK: -- Helpers
    
    func AssertFor(currentDay day:Int? = 18, currentMonth month:Int? = 10, currentyear year:Int? = 2019,   theCalculatedEmblemIs emblem:Emblem, inDay expectedDay:Int,  inMonth expectedMonth:Int, inYear expectedYear:Int, file: StaticString = #file, line:UInt = #line) {
        
        //Arrange
        let sut = EmblemDater()
        let currentDate = sut.getDate(forDay: day, andMonth: month, andYear: year)
        let emblemToBeCalculated = emblem
        let expectedDateEmblem = sut.getDate(forDay: expectedDay , andMonth: expectedMonth, andYear: expectedYear)
        
        //Act
        let resultEmblemDate = sut.getNextAvailableDate(for: emblemToBeCalculated, inCurrentDate: currentDate)
        
        //Assert
        XCTAssertEqual(expectedDateEmblem, resultEmblemDate, file: file, line: line)
        
    }
    
}
