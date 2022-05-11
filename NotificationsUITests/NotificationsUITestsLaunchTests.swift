//
//  NotificationsUITestsLaunchTests.swift
//  NotificationsUITests
//
//  Created by Felipe Grosze Nipper de Oliveira on 11/05/22.
//

import XCTest

class NotificationsUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
    
    func testButton() throws {
        let app = XCUIApplication()
        app.launch()
        app.buttons["Change Color"].tap()
        let button =  app.buttons["Change Color"]
        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app
        
        XCTAssertTrue(!button.isEnabled, "false")
//
//        let attachment = XCTAttachment(screenshot: app.screenshot())
//        attachment.name = "Launch Screen"
//        attachment.lifetime = .keepAlways
//        add(attachment)
    }
}
