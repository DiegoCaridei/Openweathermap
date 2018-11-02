//
//  WheaterTableViewDataSourceTest.swift
//  OpenweathermapTests
//
//  Created by Diego Caridei on 02/11/2018.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import XCTest

@testable import Openweathermap
class WheaterTableViewDataSourceTest: XCTestCase {
    
    var tableView: UITableView!
    var sut: WheaterTableViewDataSource!
    var mock = MockURLSession()
    
    override func setUp() {
        super.setUp()
        tableView = UITableView()
        sut = makeSUT()
    }
    
    override func tearDown() {
        
        tableView = nil
        sut = nil
        super.tearDown()
    }
    
    func test_populateTable() {
        
        XCTAssertNotNil(sut.populateTable("Napoli", session: mock))
        XCTAssertTrue(sut.elements.count > 4)
        let cell = sut.tableView(tableView, cellForRowAt: IndexPath(row: 0, section: 0)) as? WeatherTableViewCell
        XCTAssertEqual(cell?.cityNameLabel.text, "Napoli")
    }
    
    func test_numberOfRowsInSection() {
        
        XCTAssertEqual(sut.tableView(tableView, numberOfRowsInSection: 0), sut.elements.count)
    }
    
    func test_WeatherTableViewCell() {
        
        let cell = sut.tableView(tableView, cellForRowAt: IndexPath(row: 0, section: 0)) as? WeatherTableViewCell
        let actualReuseIdentifer = cell?.reuseIdentifier
        let expectedReuseIdentifier = "WeatherTableViewCell"
        XCTAssertEqual(actualReuseIdentifer, expectedReuseIdentifier)
    }
    
    //Helper Method
    func makeSUT(isTheVoteClose: Bool = true) -> WheaterTableViewDataSource {
        let sut = WheaterTableViewDataSource(tableView: tableView,elements:[WeatherViewModel(name: "", date: "", weather: "")])
        return sut
    }
}
