import XCTest
import EmblemDateCalculator

class EmblemDateFormatterTests: XCTestCase {

    func test_getFriendlyDate_ReturnsDateSundaySeptember62020at4h43minPM_TimeZoneBOT() {
        let today = Date(timeIntervalSinceNow: 1599428642000) // Sep 6 2020 at 4:44PM
        let sut = EmblemDateFormatter()
        
        let friendlyDate = sut.getFriendlyDate(today)
        
        XCTAssertEqual(friendlyDate, "Sunday, September 6, 2020")
        
    }

}
