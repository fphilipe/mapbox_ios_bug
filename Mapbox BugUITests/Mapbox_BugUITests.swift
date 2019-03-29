import XCTest

class Mapbox_BugUITests: XCTestCase {
    private var app: XCUIApplication!

    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    func testExample() {
        XCTAssert(app.buttons["annotation"].exists)
    }
}
