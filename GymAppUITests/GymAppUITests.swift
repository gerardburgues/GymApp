//
//  GymAppUITests.swift
//  GymAppUITests
//
//  Created by Gerard Burgués Llavall on 21/5/21.
//

import XCTest

class GymAppUITests: XCTestCase {
    var app: XCUIApplication!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    override func setUp() {
           continueAfterFailure = false
           app = XCUIApplication()
           app.launchArguments = ["testing"]
           app.launch()
       }
    func testValidLoginSuccess(){
        
        let Email = app.textFields["Email"]
        let pwd = app.secureTextFields["Password"]
        Email.tap()
        Email.typeText("111@gmail.com")
              
        pwd.tap()
        pwd.typeText("123456")
      

        app.buttons["Click twice"].tap()
        app.buttons["Log in"].tap()
             
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
