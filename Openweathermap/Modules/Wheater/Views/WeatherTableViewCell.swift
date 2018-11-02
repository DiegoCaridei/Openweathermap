//
//  WeatherTableViewCell.swift
//  Openweathermap
//
//  Created by Diego Caridei on 02/11/2018.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var cityNameLabel: UILabel!
    
    func setCell(weather: WeatherViewModel) {
        self.dayLabel.text = String.unwrap(string: weather.date)
        self.cityNameLabel.text = String.unwrap(string: weather.name)
        self.weatherLabel.text = String.unwrap(string: weather.weather)
    }
}
