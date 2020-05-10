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
    
    
    func test_getCurrentEmblem_WhenDateIs_Oct252019TZGMTMinus5At300_ShouldReturnMarksman() {
        
        let emblem = makeSUT(forDay: 25)
        
        XCTAssertEqual(emblem, Emblem.Marksman)
        
    }
    
    func test_getCurrentEmblem_WhenDateIs_Oct262019TZGMTMinus5At300_ShouldReturnMarksman() {
           
           let emblem = makeSUT(forDay: 26)
           
           XCTAssertEqual(emblem, Emblem.Marksman)
           
       }

    
    func test_getCurrentEmblem_WhendateIs_Oct272019TZGMTMinus5At300_ShouldReturnTank() {
        let emblem = makeSUT(forDay: 27)
        
        XCTAssertEqual(emblem, Emblem.Tank)
    }
    
    func test_getCurrentEmblem_WhendateIs_Oct282019TZGMTMinus5At300_ShouldReturnTank() {
           let emblem = makeSUT(forDay: 28)
           
           XCTAssertEqual(emblem, Emblem.Tank)
       }
    
    func test_getCurrentEmblem_WhendateIs_Oct292019TZGMTMinus5At300_ShouldReturnTank() {
             let emblem = makeSUT(forDay: 29)
             
             XCTAssertEqual(emblem, Emblem.Tank)
         }
    
    
    func test_getCurrentEmblemWhenDateIs_Oct302019TZGMTMinus5At300_ShouldReturnJungle() {
        let emblem = makeSUT(forDay: 30)
        
        XCTAssertEqual(emblem, Emblem.Jungle)
    }
    
    
    func test_getCurrentEmblemWhenDateIs_Oct312019TZGMTMinus5At300_ShouldReturnJungle() {
        let emblem = makeSUT(forDay: 31)
        
        XCTAssertEqual(emblem, Emblem.Jungle)
    }
    
    func test_getCurrentEmblemWhenDateIs_Nov012019TZGMTMinus5At300_ShouldReturnJungle() {
           let emblem = makeSUT(forDay: 1, andMonth: 11)
           
        XCTAssertEqual(emblem, Emblem.Jungle)
       }
    
    
    func test_getCurrentEmblemWhenDateIs_Nov022019TZGMTMinus5At300_ShouldReturnAssassin() {
        let emblem = makeSUT(forDay: 2, andMonth: 11)
        
        XCTAssertEqual(emblem, Emblem.Assassin)
    }
    
    func test_getCurrentEmblemWhenDateIs_Nov032019TZGMTMinus5At300_ShouldReturnAssassin() {
           let emblem = makeSUT(forDay: 3, andMonth: 11)
           
           XCTAssertEqual(emblem, Emblem.Assassin)
       }
    
    func test_getCurrentEmblemWhenDateIs_Nov042019TZGMTMinus5At300_ShouldReturnAssassin() {
             let emblem = makeSUT(forDay: 4, andMonth: 11)
             
             XCTAssertEqual(emblem, Emblem.Assassin)
         }
    
    func test_getCurrentEmblemWhenDateIs_Nov052019TZGMTMinus5At300_ShouldReturnMage() {
        let emblem = makeSUT(forDay: 5, andMonth: 11)
        
        XCTAssertEqual(emblem, Emblem.Mage)
    }
    
    func test_getCurrentEmblemWhenDateIs_Nov062019TZGMTMinus5At300_ShouldReturnMage() {
           let emblem = makeSUT(forDay: 6, andMonth: 11)
           
           XCTAssertEqual(emblem, Emblem.Mage)
       }
    
    func test_getCurrentEmblemWhenDateIs_Nov072019TZGMTMinus5At300_ShouldReturnMage() {
             let emblem = makeSUT(forDay: 7, andMonth: 11)
             
             XCTAssertEqual(emblem, Emblem.Mage)
         }
    
    func test_getCurrentEmblemWhenDateIs_Nov082019TZGMTMinus5At300_ShouldReturnFighter() {
                let emblem = makeSUT(forDay: 8, andMonth: 11)
                
        XCTAssertEqual(emblem, Emblem.Fighter)
    }
         
    
    func test_getCurrentEmblemWhenDateIs_Nov092019TZGMTMinus5At300_ShouldReturnFighter() {
                  let emblem = makeSUT(forDay: 9, andMonth: 11)
                  
          XCTAssertEqual(emblem, Emblem.Fighter)
      }
    
    func test_getCurrentEmblemWhenDateIs_Nov102019TZGMTMinus5At300_ShouldReturnFighter() {
                     let emblem = makeSUT(forDay: 10, andMonth: 11)
                     
             XCTAssertEqual(emblem, Emblem.Fighter)
    }
    
    func test_getCurrentEmblemWhenDateIs_Nov112019TZGMTMinus5At300_ShouldReturnFighter() {
                        let emblem = makeSUT(forDay: 11, andMonth: 11)
                        
        XCTAssertEqual(emblem, Emblem.Support)
       }
    
    func test_getCurrentEmblemWhenDateIs_May032020TZGMTMinus5At300_ShouldReturnFighter() {
                          let emblem = makeSUT(forDay: 3, andMonth: 5, andYear: 2020)
                          
        XCTAssertEqual(emblem, Emblem.Tank)
    }
    
    func test_getCurrentEmblemWhenDateIs_May032020TZGMTMinus5At2042_ShouldReturnTank() {
                          let emblem = makeSUT(forDay: 3, andMonth: 5, andYear: 2020, andHour: 20 , andMinute: 42)

        XCTAssertEqual(emblem, Emblem.Tank)
    }

    func test_getCurrentEmblemWhenDateIs_May032020TPDTAt2042_ShouldReturnTank() {
        let timezone = TimeZone(abbreviation: "PDT") ?? TimeZone.current
        let emblem = makeSUT(forDay: 3, andMonth: 5, andYear: 2020, andHour: 20 , andMinute: 42, andSeconds: 0, inTimezone: timezone )

           XCTAssertEqual(emblem, Emblem.Tank)
       }
//
    func test_getDate_returnsDefaultMinDateSince1970() {
        let sut = makeSUT()
        let date = sut.getDefaultDate()
        XCTAssertEqual(date, Date(timeIntervalSince1970: 0))
    }
    
    // MARK: - Helpers
    func makeSUT() -> EmblemDater {
        return EmblemDater()
    }
    
    func makeSUT (forDay day:Int? = 18, andMonth month:Int? = 10, andYear year:Int? = 2019, andHour hour:Int? = 3, andMinute minute:Int? = 0, andSeconds seconds:Int? = 0, inTimezone timezone:TimeZone = TimeZone(abbreviation: "BOT") ?? TimeZone.current) -> Emblem {
        let sut = makeSUT()
        let date = sut.getDate(forDay: day, andMonth: month, andYear: year, andHour: hour, andMinute: minute, andSeconds: seconds, inTimezone: timezone)
        let emblem =  sut.getEmblem(forDate: date)
        return emblem
    }

}
