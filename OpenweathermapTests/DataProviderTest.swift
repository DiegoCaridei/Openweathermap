//
//  DataProviderTest.swift
//  OpenweathermapTests
//
//  Created by Diego Caridei on 02/11/2018.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import XCTest
@testable import Openweathermap
class DataProviderTest: XCTestCase {

    func test_DataProvider() {
        let mock = MockURLSession()
        DataProvider.fetchWeather(for: "Napoli", session: mock) { (viewModels) in
            XCTAssertNotNil(viewModels)
            XCTAssert(viewModels.count >  2)
            XCTAssertEqual(viewModels[0].name, "Napoli")
        }
    }
}
