//
//  NotificationsTests.swift
//  NotificationsTests
//
//  Created by Felipe Grosze Nipper de Oliveira on 11/05/22.
//

import XCTest

@testable import Notifications

class NotificationsTests: XCTestCase {
    
    var sut: ColorGenerator!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = ColorGenerator()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testNotification(){
        expectation(forNotification: NSNotification.Name(rawValue: "Posted") , object: nil, handler: nil)
        Notification().createNotification()
        waitForExpectations(timeout: 10, handler: nil)
        
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testGetColor() {
        var colors = [UIColor(red: 137/255, green: 137/255, blue: 137/255, alpha: 1),
                                      UIColor(red: 255/255, green: 242/255, blue: 140/255, alpha: 1),
                                      UIColor(red: 242/255, green: 129/255, blue: 87/255, alpha: 1),
                                      UIColor(red: 242/255, green: 177/255, blue: 57/255, alpha: 1),
                                      UIColor(red: 137/255, green: 137/255, blue: 137/255, alpha: 1),
                                      UIColor(red: 242/255, green: 129/255, blue: 87/255, alpha: 1),
                                      UIColor(red: 137/255, green: 137/255, blue: 137/255, alpha: 1),
                                      UIColor(red: 2/255, green: 76/255, blue: 139/255, alpha: 1),
                                      UIColor(red: 137/255, green: 137/255, blue: 137/255, alpha: 1),
                                      UIColor(red: 206/255, green: 34/255, blue: 90/255, alpha: 1),
                                      UIColor(red: 137/255, green: 137/255, blue: 137/255, alpha: 1),
                                      UIColor(red: 243/255, green: 90/255, blue: 56/255, alpha: 1),
                                      UIColor(red: 5/255, green: 190/255, blue: 195/255, alpha: 1),
                                      UIColor(red: 2/255, green: 76/255, blue: 139/255, alpha: 1),
                                      UIColor(red: 192/255, green: 93/255, blue: 12/255, alpha: 1),
                                      UIColor(red: 192/255, green: 93/255, blue: 12/255, alpha: 1),
                                      UIColor(red: 5/255, green: 190/255, blue: 195/255, alpha: 1),
                                      UIColor(red: 206/255, green: 34/255, blue: 90/255, alpha: 1),
                                      UIColor(red: 2/255, green: 76/255, blue: 139/255, alpha: 1),
                                      UIColor(red: 243/255, green: 90/255, blue: 56/255, alpha: 1)]

      // when
         let color = sut.getColor()

      // then
        XCTAssertTrue(colors.contains(color), "Test")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
