//
//  DataProvider.swift
//  Openweathermap
//
//  Created by Diego Caridei on 02/11/2018.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import UIKit

class DataProvider {
    typealias weatherCompletition =  ([WeatherViewModel]) -> Void
    
    static func fetchWeather(for city: String, session: URLSessionProtocol, completition: @escaping(weatherCompletition)) {
        let manager = NetworkManager(session: session)
        manager.getWeather(url: manager.getURL(city: city)) {  (response) in
            switch response {
            case .success(let weather):
                var elements = [WeatherViewModel]()
                weather.list?.forEach({ (list) in
                    list.weather?.forEach({ (element) in
                        elements.append(WeatherViewModel(name: city, date: String.unwrap(string: list.dtTxt), weather: String.unwrap(string: element.description)))
                    })
                })
                completition(elements)
            case .failure(let error): print(error.localizedDescription)
            }
        }
    }
}
