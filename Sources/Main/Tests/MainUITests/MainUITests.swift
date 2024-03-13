import XCTest

final class UITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    func testWelcomeMessage() {
        XCTAssertTrue(app.staticTexts["I am working!"].exists)
    }
}
