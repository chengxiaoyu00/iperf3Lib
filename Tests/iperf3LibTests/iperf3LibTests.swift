import XCTest
@testable import iperf3Lib

final class iperf3LibTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let json = getJsonInfo(1)
        XCTAssertEqual(json, nil)
        let ip = iperf_new_test()
        ip?.pointee.on_test_progress_change = { t in
            guard let tt = t?.pointee else {return}
            
            XCTAssertEqual(tt.bytes_transferred, nil)
        }
        XCTAssertEqual(ip?.pointee.title, nil)
    }
}
