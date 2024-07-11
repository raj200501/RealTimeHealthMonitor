import XCTest
@testable import RealTimeHealthMonitor

class HealthDataTests: XCTestCase {
    func testHealthDataModel() {
        let healthData = HealthData(type: "Heart Rate", value: 72, date: Date())
        XCTAssertEqual(healthData.type, "Heart Rate")
        XCTAssertEqual(healthData.value, 72)
    }
}
