//
//  WheaterTableViewDataSource.swift
//  Openweathermap
//
//  Created by Diego Caridei on 02/11/2018.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import UIKit

class WheaterTableViewDataSource: NSObject, UITableViewDataSource {
    
    private var tableView: UITableView!
    var elements = [WeatherViewModel]()
    
    convenience  init(tableView: UITableView) {
        self.init()
        self.tableView = tableView
        self.tableView.register(WeatherTableViewCell.self)
    }
    
    convenience  init(tableView: UITableView, elements: [WeatherViewModel]) {
        self.init()
        self.tableView = tableView
        self.elements = elements
        self.tableView.register(WeatherTableViewCell.self)
    }
    
    fileprivate func reloadData() {
        DispatchQueue.main.async { self.tableView.reloadData() }
    }
        
    func populateTable(_ cityName: String, session: URLSessionProtocol) {
        elements.removeAll()
        DataProvider.fetchWeather(for: cityName, session: session) { [weak self] (viewModel) in
            guard let self = self else { return }
            self.elements = viewModel
            self.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return elements.count }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let weatherCell = tableView.dequeueReusableCell(WeatherTableViewCell.self) else { fatalError("Could not dequeue cell: WeatherTableViewCell") }
        weatherCell.setCell(weather: elements[indexPath.row])
        return weatherCell
    }
}
