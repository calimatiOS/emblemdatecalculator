import XCTest
import EmblemDateCalculator

class EmblemDateFormatterTests: XCTestCase {

    func test_getFriendlyDate_ReturnsDateSundaySeptember62020at4h43minPM() {
        let today = Date(timeIntervalSince1970: 1599428642) // Sep 6 2020 at 4:44PM
        let sut = EmblemDateFormatter()
        
        let friendlyDate = sut.getFriendlyDate(today)
        
        XCTAssertEqual(friendlyDate, "Sunday, September 6, 2020 at 4:44 PM")
        
    }
    
    func test_getFriendlyDate_ReturnsDateSundaySeptember132020at6h00minPM() {
           let today = Date(timeIntervalSince1970: 1600038000) // Sep 13 2020 at 6:00PM
           let sut = EmblemDateFormatter()
           
           let friendlyDate = sut.getFriendlyDate(today)
           
           XCTAssertEqual(friendlyDate, "Sunday, September 13, 2020 at 6:00 PM")
           
       }

}
