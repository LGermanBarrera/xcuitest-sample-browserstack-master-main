//
//  ConditionalPractice.swift
//  SampleXCUITests
//
//  Created by solvd on 04/08/2023.
//  Copyright © 2023 BrowserStack. All rights reserved.
//

import Foundation
import XCTest

class ConditionalPractice: XCTestCase{
    
    let app = XCUIApplication()
    
    func testConditional()throws{
        app.launch()
        let alertText = app.staticTexts["Alert"]
        if alertText.exists{
            print("ALERT IS AVAILABLE")
            alertText.tap()
            sleep(5)
        }else{
            print("ALERT IS NOT PRESENT")
        }
            
    }
    
}
