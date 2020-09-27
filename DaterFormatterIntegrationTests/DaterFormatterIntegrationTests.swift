import XCTest
import EmblemDateCalculator

class DaterFormatterIntegrationTests: XCTestCase {

    func test_getFriendlyDateForSupportEmblem_WhenDateIsOct182019At3h00m_ThenShouldReturnOct212019InFriendlyString() {
        let sut = EmblemDater()
        let emblemFormatter = EmblemDateFormatter()
        let currentDate = Date(timeIntervalSince1970: 1571385600)
        let supportEmblemDate = sut.getNextAvailableDate(for: .Support, inCurrentDate: currentDate)
        let friendlyDate = emblemFormatter.getFriendlyDate(supportEmblemDate)
        XCTAssertEqual(friendlyDate, "Monday, October 21, 2019 at 3:00 AM")
    }
  
    func test_getFriendlyDateForMarksmanEmblem_WhenDateIsOct182019At3h00m_ThenShouldReturnOct242019FriendlyString() {
        
        let sut = EmblemDater()
        let emblemFormatter = EmblemDateFormatter()
        let currentDate = Date(timeIntervalSince1970: 1571385600)
        let supportEmblemDate = sut.getNextAvailableDate(for: .Marksman, inCurrentDate: currentDate)
        let friendlyDate = emblemFormatter.getFriendlyDate(supportEmblemDate)
        XCTAssertEqual(friendlyDate, "Thursday, October 24, 2019 at 3:00 AM")
    }
    
    func test_getFriendlyDateForTankEmblem_WhenDateIsOct182019At3h00m_ThenShouldReturnOct272019FriendlyString() {
        
        let sut = EmblemDater()
        let emblemFormatter = EmblemDateFormatter()
        let currentDate = Date(timeIntervalSince1970: 1571385600)
        let supportEmblemDate = sut.getNextAvailableDate(for: .Tank, inCurrentDate: currentDate)
        let friendlyDate = emblemFormatter.getFriendlyDate(supportEmblemDate)
        XCTAssertEqual(friendlyDate, "Sunday, October 27, 2019 at 3:00 AM")
    }
    
    func test_getFriendlyDateForJungleEmblem_WhenDateIsOct182019At3h00m_ThenShouldReturnOct302019FriendlyString() {
        
        let sut = EmblemDater()
        let emblemFormatter = EmblemDateFormatter()
        let currentDate = Date(timeIntervalSince1970: 1571385600)
        let supportEmblemDate = sut.getNextAvailableDate(for: .Jungle, inCurrentDate: currentDate)
        let friendlyDate = emblemFormatter.getFriendlyDate(supportEmblemDate)
        XCTAssertEqual(friendlyDate, "Wednesday, October 30, 2019 at 3:00 AM")
    }
    
    func test_getFriendlyDateForAssasinEmblem_WhenDateIsOct182019At3h00m_ThenShouldReturnNov022019FriendlyString() {
        
        let sut = EmblemDater()
        let emblemFormatter = EmblemDateFormatter()
        let currentDate = Date(timeIntervalSince1970: 1571385600)
        let supportEmblemDate = sut.getNextAvailableDate(for: .Assassin, inCurrentDate: currentDate)
        let friendlyDate = emblemFormatter.getFriendlyDate(supportEmblemDate)
        XCTAssertEqual(friendlyDate, "Saturday, November 2, 2019 at 3:00 AM")
    }
    
    

}
