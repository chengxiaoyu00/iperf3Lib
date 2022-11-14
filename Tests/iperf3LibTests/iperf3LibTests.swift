import XCTest
@testable import iperf3Lib

final class iperf3LibTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let ip = iperf_test()
        XCTAssertEqual(ip.title, nil)
    }
}
