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
    
    

}
