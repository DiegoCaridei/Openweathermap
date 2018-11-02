//
//  WeatherFeedModels.swift
//  Openweathermap
//
//  Created by Diego Caridei on 02/11/2018.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import Foundation
class Weather: Codable {
    let list: [List]?
    
    init(list: [List]?) {
        self.list = list
    }
}

class List: Codable {
    let weather: [WeatherElement]?
    let dtTxt: String?
    
    enum CodingKeys: String, CodingKey {
        case weather
        case dtTxt = "dt_txt"
    }
    
    init(weather: [WeatherElement]?, dtTxt: String?) {
        self.weather = weather
        self.dtTxt = dtTxt
    }
}

class WeatherElement: Codable {
    let id: Int?
    let main: String?
    let description: String?
    let icon: String?
    
    init(id: Int?, main: String?, description: String?, icon: String?) {
        self.id = id
        self.main = main
        self.description = description
        self.icon = icon
    }
}
