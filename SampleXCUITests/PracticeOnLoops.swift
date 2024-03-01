//
//  PracticeOnLoops.swift
//  SampleXCUITests
//
//  Created by solvd on 07/08/2023.
//  Copyright © 2023 BrowserStack. All rights reserved.
//

import Foundation
import XCTest

class PracticeOnLoops: XCTestCase{
    
    let app = XCUIApplication()
    
    
    func testPracticeLoop()throws{
        
        app.launch()
  
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
            app.staticTexts["Alert"].firstMatch.tap()
            print("Alert is tapped______")
            app.buttons["OK"].firstMatch.tap()
            print("Ok Button is Tapped_____")
        }
        
        for _ in 1...3{
            print("I am printing from my loop")
        }
        
        app.buttons["Web View"].firstMatch.tap()
        
        for _ in 1...3 {
            app.swipeUp()
        }
    }
    
    
    
    func testSwipUpUntilContactBtnIsPresent()throws{
        
        app.launch()
        app.buttons["Web View"].firstMatch.tap()
    
        
        let contactBtn = app.buttons["Contact Us"]
        while contactBtn.exists{
            app.swipeUp()
        }
        contactBtn.firstMatch.tap()
    }
    

    
}
