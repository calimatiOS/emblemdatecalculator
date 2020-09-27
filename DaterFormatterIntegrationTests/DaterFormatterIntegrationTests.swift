import XCTest
import EmblemDateCalculator

class DaterFormatterIntegrationTests: XCTestCase {

    
     let sut = EmblemDater()
     let emblemFormatter = EmblemDateFormatter()
     let currentDate = Date(timeIntervalSince1970: 1571385600)
    
    
    func test_getFriendlyDateForSupportEmblem_WhenDateIsOct182019At3h00m_ThenShouldReturnOct212019InFriendlyString() {
      
        AssertFriendlyDateIs("Monday, October 21, 2019 at 3:00 AM", for: .Support)
    }
  
    func test_getFriendlyDateForMarksmanEmblem_WhenDateIsOct182019At3h00m_ThenShouldReturnOct242019FriendlyString() {
        
        AssertFriendlyDateIs("Thursday, October 24, 2019 at 3:00 AM", for: .Marksman)
    }
    
    func test_getFriendlyDateForTankEmblem_WhenDateIsOct182019At3h00m_ThenShouldReturnOct272019FriendlyString() {
        
        AssertFriendlyDateIs("Sunday, October 27, 2019 at 3:00 AM", for: .Tank)
    }
    
    func test_getFriendlyDateForJungleEmblem_WhenDateIsOct182019At3h00m_ThenShouldReturnOct302019FriendlyString() {
        
        AssertFriendlyDateIs("Wednesday, October 30, 2019 at 3:00 AM", for: .Jungle)
    }
    
    func test_getFriendlyDateForAssasinEmblem_WhenDateIsOct182019At3h00m_ThenShouldReturnNov022019FriendlyString() {
        
        AssertFriendlyDateIs("Saturday, November 2, 2019 at 3:00 AM", for: .Assassin)
    }
    
    //Mark: Helper Methods
    
    fileprivate func AssertFriendlyDateIs(_ expectedDateString: String, for emblem:Emblem) {
        let supportEmblemDate = sut.getNextAvailableDate(for: emblem, inCurrentDate: currentDate)
        let friendlyDate = emblemFormatter.getFriendlyDate(supportEmblemDate)
        XCTAssertEqual(friendlyDate, expectedDateString)
    }
    
    

}
