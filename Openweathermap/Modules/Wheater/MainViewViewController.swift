//
//  MainViewViewController.swift
//  Openweathermap
//
//  Created by Diego Caridei on 02/11/2018.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import UIKit

class MainViewViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private var tableDataSource: WheaterTableViewDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSettings()
    }
}

// MARK: - UI Helper methods
extension MainViewViewController {
    
    fileprivate func initialSettings() {
        setupTableView()
        setupNavBar()
        self.definesPresentationContext = true
        tableDataSource.populateTable(Constant.initialCity, session:URLSession.shared)
    }
    
    fileprivate func setupTableView() {
        
        tableDataSource = WheaterTableViewDataSource(tableView: tableView)
        tableView.dataSource = tableDataSource
    }
    
    fileprivate func setupNavBar() {
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        navigationItem.searchController = searchController
        navigationItem.title = Constant.title
        navigationItem.hidesSearchBarWhenScrolling = false
    }
}

// MARK: - UISearchBarDelegate 
extension MainViewViewController: UISearchBarDelegate {
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        guard let city = searchBar.text else { return }
        tableDataSource.populateTable(city, session: URLSession.shared)
    }
}
