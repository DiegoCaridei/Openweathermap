//
//  NetworkManager.swift
//  Openweathermap
//
//  Created by Diego Caridei on 02/11/2018.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import UIKit

enum NetworkResult<T>: Error {
    
    case success(T)
    case failure(Error)
}

enum Resource {
    case fiveDay
}

//Usefull for dependecy injection/Mock and testings
protocol URLSessionProtocol {
    
    func request<T>(url:URL,resource: Resource,completionHandler: @escaping (NetworkResult<T>) -> Void)
}

class NetworkManager {
    let session:URLSessionProtocol
    init(session: URLSessionProtocol) {
        self.session = session
    }
    func getWeather(url:URL,completionHandler:  @escaping (NetworkResult<Weather>) -> Void) {
        self.session.request(url: url, resource: Resource.fiveDay, completionHandler: completionHandler)
    }
    func getURL(city: String) -> URL {
        
        let urlString = Constant.baseURL + Constant.path + city + Constant.appID + Constant.key
        guard let url = URL(string: urlString) else { fatalError() }
        return url
    }
}

extension URLSession: URLSessionProtocol {
    func request<T>(url: URL,resource: Resource, completionHandler: @escaping (NetworkResult<T>) -> Void)  {
        let task = self.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completionHandler(NetworkResult.failure(error))
            }
            else if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 {
                do {
                    switch resource {
                    case .fiveDay:
                        guard let decode = try JSONDecoder().decode(Weather.self, from: data)  as? T else {
                            completionHandler(NetworkResult.failure(error!))
                            break
                        }
                        completionHandler(NetworkResult.success(decode))
                    }
                }
                catch { completionHandler(NetworkResult.failure(error)) }
            }
        }
        task.resume()
    }
}
