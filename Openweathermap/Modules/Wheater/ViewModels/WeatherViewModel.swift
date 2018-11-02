//
//  WeatherViewModel.swift
//  Openweathermap
//
//  Created by Diego Caridei on 02/11/2018.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import Foundation

struct WeatherViewModel {
    var name: String?
    var date: String?
    var weather: String?
    init(name: String, date: String, weather: String) {
        self.name = name
        self.date = date
        self.weather = weather
    }
}
