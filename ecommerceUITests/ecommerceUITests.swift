//
/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/
//
    

import XCTest

final class ecommerceUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launchArguments += ["-uiuserinterfacestyle", "light"]
        app.launch()
        
        let table = app.tables.element(boundBy: 0)
        XCTAssertTrue(table.exists, "Table exists")
        
        let collectionView = app.tables.cells.collectionViews["productCollectionView"]
        XCTAssertTrue(collectionView.exists)
        
        let targetCell = collectionView.cells["cell_3"]
        XCTAssertTrue(targetCell.waitForExistence(timeout: 5), "Product with 3 should be visible")
        targetCell.tap()
        

        let detailHeader = app.staticTexts["Cotton Pants"]
        XCTAssertTrue(detailHeader.exists)
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launchArguments += ["-uiuserinterfacestyle", "light"]
                XCUIApplication().launch()
            }
        }
    }
}
