import XCTest
import EmblemDateCalculator

class EmblemDateCalculatorTests: XCTestCase {
    
    func test_getEmblemForDefaultDate_ShouldReturnFighter() {
        let sut = makeSUT()
        XCTAssertEqual(sut.getEmblem(forDate: Date(timeIntervalSince1970: 0)), Emblem.Fighter)
    }
    
    func test_getCurrentEmblemForValidDate_DoesNotThrowError() {
        let sut = makeSUT()
        let date = Date()
        XCTAssertNoThrow(sut.getEmblem(forDate: date))
    }
  
    
    func test_getCurrentEmblem_WhenDateIs_Oct182019TZGMTMinus5At300_ShouldReturnFighter() {
        let emblem = makeSUT(forDay: 18)
    
        XCTAssertEqual(emblem, Emblem.Fighter)
        
    }
    
    
    func test_getCurrentEmblem_WhenDateIs_Oct192019TZGMTMinus5At300_ShouldReturnFighter() {
        let emblem = makeSUT(forDay: 19)
    
        XCTAssertEqual(emblem, Emblem.Fighter)
        
    }
    
    
    func test_getCurrentEmblem_WhenDateIs_Oct202019TZGMTMinus5At300_ShouldReturnFighter() {
        let emblem = makeSUT(forDay: 20)
    
        XCTAssertEqual(emblem, Emblem.Fighter)
        
    }
    
    
    
    func test_getCurrentEmblem_WhenDateIs_Oct212019TZGMTMinus5At300_ShouldReturnSupport() {
         let emblem = makeSUT(forDay: 21)
          
        XCTAssertEqual(emblem, Emblem.Support)
    }
    
    func test_getCurrentEmblem_WhenDateIs_Oct222019TZGMTMinus5At300_ShouldReturnSupport() {
            let emblem = makeSUT(forDay: 22)
           XCTAssertEqual(emblem, Emblem.Support)
       }

    func test_getCurrentEmblem_WhenDateIs_Oct232019TZGMTMinus5At300_ShouldReturnSupport() {
            let emblem = makeSUT(forDay: 23)
           XCTAssertEqual(emblem, Emblem.Support)
       }


    func test_getCurrentEmblem_WhenDateIs_Oct242019TZGMTMinus5At300_ShouldReturnMarksman() {
        
        let emblem = makeSUT(forDay: 24)
        
        XCTAssertEqual(emblem, Emblem.Marksman)
        
    }
    
    func test_getCurrentEmblem_WhendateIs_Oct272019TZGMTMinus5At300_ShouldReturnTank() {
        let emblem = makeSUT(forDay: 27)
        
        XCTAssertEqual(emblem, Emblem.Tank)
    }
    
    func test_getCurrentEmblemWhenDateIs_Oct302019TZGMTMinus5At300_ShouldReturnJungle() {
        let emblem = makeSUT(forDay: 30)
        
        XCTAssertEqual(emblem, Emblem.Jungle)
    }
    
    func test_getCurrentEmblemWhenDateIs_Nov022019TZGMTMinus5At300_ShouldReturnAssassin() {
        let emblem = makeSUT(forDay: 2, andMonth: 11)
        
        XCTAssertEqual(emblem, Emblem.Assassin)
    }
    
    func test_getCurrentEmblemWhenDateIs_Nov052019TZGMTMinus5At300_ShouldReturnMage() {
        let emblem = makeSUT(forDay: 5, andMonth: 11)
        
        XCTAssertEqual(emblem, Emblem.Mage)
    }
    
    func test_getDate_returnsDefaultMinDateSince1970() {
        let sut = makeSUT()
        let date = sut.getDefaultDate()
        XCTAssertEqual(date, Date(timeIntervalSince1970: 0))
    }
    
    // MARK: - Helpers
    func makeSUT() -> EmblemDater {
        return EmblemDater()
    }
    
    func makeSUT (forDay day:Int? = 18, andMonth month:Int? = 10) -> Emblem {
        let sut = makeSUT()
        let date = sut.getDate(forDay: day, andMonth: month)
        let emblem =  sut.getEmblem(forDate: date)
        return emblem
    }

}
