//
//  NS_Predicate.swift
//  SampleXCUITests
//
//  Created by solvd on 07/08/2023.
//  Copyright © 2023 BrowserStack. All rights reserved.
//

import Foundation
import XCTest

class NS_Predicate: XCTestCase {
    
    let app = XCUIApplication()
    
    func testPredicate()throws{
        
        app.launch()
        
        let searchText = "Alert"
        let predicate = NSPredicate(format: "label CONTAINS[c] %@", searchText)
        app.staticTexts.containing(predicate).firstMatch.tap()
        
        print("Alert is tapped")
        
        
        
        
    }
}
