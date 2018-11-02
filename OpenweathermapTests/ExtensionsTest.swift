//
//  ExtensionsTest.swift
//  OpenweathermapTests
//
//  Created by Diego Caridei on 02/11/2018.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import XCTest

@testable import Openweathermap
class ExtensionsTest: XCTestCase {
    
    func test_StringUngrap() {
        let sut: String? = nil
        XCTAssertNotNil(String.unwrap(string: sut))
    }
}
