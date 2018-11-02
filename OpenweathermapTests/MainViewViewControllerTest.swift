//
//  MainViewViewController.swift
//  OpenweathermapTests
//
//  Created by Diego.Caridei on 02/11/2018.
//  Copyright © 2018 Caridei.Diego. All rights reserved.
//

import XCTest

@testable import Openweathermap
class MainViewViewControllerTest: XCTestCase {
    
    var sut: MainViewViewController!
    
    override func setUp() {
        super.setUp()
        sut = makeSUT()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_conforToUISearchBarDelegate() {
        let search = UISearchBar()
        XCTAssertNotNil(sut.conforms(to: UISearchBarDelegate.self))
        XCTAssertNotNil(sut.searchBarTextDidEndEditing(search))
    }
    
    func test_tableViewHasDataSource() {
        
        XCTAssertNotNil(sut.tableView.dataSource)
    }
    
    //Helper Methdos
    func makeSUT() -> MainViewViewController {
        
        let sut = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewViewController") as! MainViewViewController
        _ = sut.view
        return sut
        
    }
}
