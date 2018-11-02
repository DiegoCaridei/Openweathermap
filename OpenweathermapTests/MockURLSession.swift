//
//  MockURLSession.swift
//  OpenweathermapTests
//
//  Created by Diego Caridei on 02/11/2018.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import UIKit
@testable import Openweathermap
class MockURLSession: URLSessionProtocol {
    func request<T>(url: URL, resource: Resource, completionHandler: @escaping (NetworkResult<T>) -> Void) {
        do {
            let data = json.data(using: .utf8)
            let decode = try JSONDecoder().decode(Weather.self, from: data!)  as! T
            completionHandler(NetworkResult.success(decode))
        }catch {
            completionHandler(NetworkResult.failure(error))
        }
    }
    
    
    let json = """
{
"cod": "200",
"message": 0.2177,
"cnt": 40,
"list": [
{
"dt": 1541181600,
"main": {
"temp": 288.39,
"temp_min": 288.39,
"temp_max": 290.752,
"pressure": 1013.8,
"sea_level": 1030.72,
"grnd_level": 1013.8,
"humidity": 89,
"temp_kf": -2.36
},
"weather": [
{
"id": 804,
"main": "Clouds",
"description": "overcast clouds",
"icon": "04n"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 1.16,
"deg": 169.001
},
"rain": {},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-02 18:00:00"
},
{
"dt": 1541192400,
"main": {
"temp": 287.63,
"temp_min": 287.63,
"temp_max": 289.401,
"pressure": 1013.91,
"sea_level": 1030.79,
"grnd_level": 1013.91,
"humidity": 90,
"temp_kf": -1.77
},
"weather": [
{
"id": 803,
"main": "Clouds",
"description": "broken clouds",
"icon": "04n"
}
],
"clouds": {
"all": 80
},
"wind": {
"speed": 0.82,
"deg": 358.501
},
"rain": {},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-02 21:00:00"
},
{
"dt": 1541203200,
"main": {
"temp": 288.24,
"temp_min": 288.24,
"temp_max": 289.415,
"pressure": 1013.38,
"sea_level": 1030.31,
"grnd_level": 1013.38,
"humidity": 91,
"temp_kf": -1.18
},
"weather": [
{
"id": 804,
"main": "Clouds",
"description": "overcast clouds",
"icon": "04n"
}
],
"clouds": {
"all": 88
},
"wind": {
"speed": 3.01,
"deg": 147.503
},
"rain": {},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-03 00:00:00"
},
{
"dt": 1541214000,
"main": {
"temp": 289.48,
"temp_min": 289.48,
"temp_max": 290.067,
"pressure": 1013.37,
"sea_level": 1030.34,
"grnd_level": 1013.37,
"humidity": 96,
"temp_kf": -0.59
},
"weather": [
{
"id": 804,
"main": "Clouds",
"description": "overcast clouds",
"icon": "04n"
}
],
"clouds": {
"all": 88
},
"wind": {
"speed": 1.66,
"deg": 151.5
},
"rain": {},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-03 03:00:00"
},
{
"dt": 1541224800,
"main": {
"temp": 288.449,
"temp_min": 288.449,
"temp_max": 288.449,
"pressure": 1013.76,
"sea_level": 1030.74,
"grnd_level": 1013.76,
"humidity": 93,
"temp_kf": 0
},
"weather": [
{
"id": 803,
"main": "Clouds",
"description": "broken clouds",
"icon": "04d"
}
],
"clouds": {
"all": 56
},
"wind": {
"speed": 0.26,
"deg": 223.003
},
"rain": {},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-03 06:00:00"
},
{
"dt": 1541235600,
"main": {
"temp": 293.17,
"temp_min": 293.17,
"temp_max": 293.17,
"pressure": 1014.28,
"sea_level": 1031.17,
"grnd_level": 1014.28,
"humidity": 92,
"temp_kf": 0
},
"weather": [
{
"id": 804,
"main": "Clouds",
"description": "overcast clouds",
"icon": "04d"
}
],
"clouds": {
"all": 88
},
"wind": {
"speed": 1.76,
"deg": 71.0004
},
"rain": {},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-03 09:00:00"
},
{
"dt": 1541246400,
"main": {
"temp": 294.291,
"temp_min": 294.291,
"temp_max": 294.291,
"pressure": 1012.93,
"sea_level": 1029.88,
"grnd_level": 1012.93,
"humidity": 90,
"temp_kf": 0
},
"weather": [
{
"id": 803,
"main": "Clouds",
"description": "broken clouds",
"icon": "04d"
}
],
"clouds": {
"all": 76
},
"wind": {
"speed": 1.41,
"deg": 62.0008
},
"rain": {},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-03 12:00:00"
},
{
"dt": 1541257200,
"main": {
"temp": 294.007,
"temp_min": 294.007,
"temp_max": 294.007,
"pressure": 1011.37,
"sea_level": 1028.29,
"grnd_level": 1011.37,
"humidity": 91,
"temp_kf": 0
},
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03d"
}
],
"clouds": {
"all": 48
},
"wind": {
"speed": 1.52,
"deg": 32.5
},
"rain": {},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-03 15:00:00"
},
{
"dt": 1541268000,
"main": {
"temp": 292.025,
"temp_min": 292.025,
"temp_max": 292.025,
"pressure": 1010.5,
"sea_level": 1027.53,
"grnd_level": 1010.5,
"humidity": 82,
"temp_kf": 0
},
"weather": [
{
"id": 801,
"main": "Clouds",
"description": "few clouds",
"icon": "02n"
}
],
"clouds": {
"all": 24
},
"wind": {
"speed": 4.36,
"deg": 81.0004
},
"rain": {},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-03 18:00:00"
},
{
"dt": 1541278800,
"main": {
"temp": 289.759,
"temp_min": 289.759,
"temp_max": 289.759,
"pressure": 1010.61,
"sea_level": 1027.64,
"grnd_level": 1010.61,
"humidity": 85,
"temp_kf": 0
},
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03n"
}
],
"clouds": {
"all": 44
},
"wind": {
"speed": 2.95,
"deg": 76.0013
},
"rain": {},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-03 21:00:00"
},
{
"dt": 1541289600,
"main": {
"temp": 288.229,
"temp_min": 288.229,
"temp_max": 288.229,
"pressure": 1010.67,
"sea_level": 1027.55,
"grnd_level": 1010.67,
"humidity": 90,
"temp_kf": 0
},
"weather": [
{
"id": 804,
"main": "Clouds",
"description": "overcast clouds",
"icon": "04n"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 2.18,
"deg": 85.0033
},
"rain": {},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-04 00:00:00"
},
{
"dt": 1541300400,
"main": {
"temp": 288.571,
"temp_min": 288.571,
"temp_max": 288.571,
"pressure": 1009.81,
"sea_level": 1026.8,
"grnd_level": 1009.81,
"humidity": 92,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10n"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 1.81,
"deg": 108.004
},
"rain": {
"3h": 0.2
},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-04 03:00:00"
},
{
"dt": 1541311200,
"main": {
"temp": 287.522,
"temp_min": 287.522,
"temp_max": 287.522,
"pressure": 1011.12,
"sea_level": 1027.88,
"grnd_level": 1011.12,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 501,
"main": "Rain",
"description": "moderate rain",
"icon": "10d"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 2.32,
"deg": 94.0037
},
"rain": {
"3h": 5.095
},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-04 06:00:00"
},
{
"dt": 1541322000,
"main": {
"temp": 289.615,
"temp_min": 289.615,
"temp_max": 289.615,
"pressure": 1010.8,
"sea_level": 1027.76,
"grnd_level": 1010.8,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10d"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 2.17,
"deg": 99.0005
},
"rain": {
"3h": 1.43
},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-04 09:00:00"
},
{
"dt": 1541332800,
"main": {
"temp": 290.31,
"temp_min": 290.31,
"temp_max": 290.31,
"pressure": 1010.23,
"sea_level": 1027.17,
"grnd_level": 1010.23,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10d"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 2.16,
"deg": 144.001
},
"rain": {
"3h": 0.9
},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-04 12:00:00"
},
{
"dt": 1541343600,
"main": {
"temp": 289.812,
"temp_min": 289.812,
"temp_max": 289.812,
"pressure": 1009.41,
"sea_level": 1026.34,
"grnd_level": 1009.41,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10d"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 1.42,
"deg": 196.001
},
"rain": {
"3h": 0.94
},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-04 15:00:00"
},
{
"dt": 1541354400,
"main": {
"temp": 287.786,
"temp_min": 287.786,
"temp_max": 287.786,
"pressure": 1009,
"sea_level": 1025.9,
"grnd_level": 1009,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10n"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 1.22,
"deg": 160.001
},
"rain": {
"3h": 2.19
},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-04 18:00:00"
},
{
"dt": 1541365200,
"main": {
"temp": 287.244,
"temp_min": 287.244,
"temp_max": 287.244,
"pressure": 1009.9,
"sea_level": 1026.73,
"grnd_level": 1009.9,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10n"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 1.8,
"deg": 119.006
},
"rain": {
"3h": 2.65
},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-04 21:00:00"
},
{
"dt": 1541376000,
"main": {
"temp": 286.12,
"temp_min": 286.12,
"temp_max": 286.12,
"pressure": 1010.3,
"sea_level": 1027.22,
"grnd_level": 1010.3,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10n"
}
],
"clouds": {
"all": 0
},
"wind": {
"speed": 2.08,
"deg": 93.5022
},
"rain": {
"3h": 0.16
},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-05 00:00:00"
},
{
"dt": 1541386800,
"main": {
"temp": 283.832,
"temp_min": 283.832,
"temp_max": 283.832,
"pressure": 1009.99,
"sea_level": 1027.08,
"grnd_level": 1009.99,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10n"
}
],
"clouds": {
"all": 20
},
"wind": {
"speed": 2.06,
"deg": 98.0042
},
"rain": {
"3h": 0.079999999999998
},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-05 03:00:00"
},
{
"dt": 1541397600,
"main": {
"temp": 283.602,
"temp_min": 283.602,
"temp_max": 283.602,
"pressure": 1010.67,
"sea_level": 1027.59,
"grnd_level": 1010.67,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10d"
}
],
"clouds": {
"all": 80
},
"wind": {
"speed": 2.11,
"deg": 115.502
},
"rain": {
"3h": 0.83
},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-05 06:00:00"
},
{
"dt": 1541408400,
"main": {
"temp": 288.616,
"temp_min": 288.616,
"temp_max": 288.616,
"pressure": 1011.54,
"sea_level": 1028.31,
"grnd_level": 1011.54,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10d"
}
],
"clouds": {
"all": 68
},
"wind": {
"speed": 2.51,
"deg": 116.001
},
"rain": {
"3h": 1.1
},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-05 09:00:00"
},
{
"dt": 1541419200,
"main": {
"temp": 291.022,
"temp_min": 291.022,
"temp_max": 291.022,
"pressure": 1011.34,
"sea_level": 1028.08,
"grnd_level": 1011.34,
"humidity": 95,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10d"
}
],
"clouds": {
"all": 76
},
"wind": {
"speed": 2.76,
"deg": 146.505
},
"rain": {
"3h": 0.040000000000003
},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-05 12:00:00"
},
{
"dt": 1541430000,
"main": {
"temp": 290.854,
"temp_min": 290.854,
"temp_max": 290.854,
"pressure": 1011.06,
"sea_level": 1027.96,
"grnd_level": 1011.06,
"humidity": 94,
"temp_kf": 0
},
"weather": [
{
"id": 804,
"main": "Clouds",
"description": "overcast clouds",
"icon": "04d"
}
],
"clouds": {
"all": 100
},
"wind": {
"speed": 2.35,
"deg": 135.505
},
"rain": {},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-05 15:00:00"
},
{
"dt": 1541440800,
"main": {
"temp": 289.087,
"temp_min": 289.087,
"temp_max": 289.087,
"pressure": 1011.34,
"sea_level": 1028.23,
"grnd_level": 1011.34,
"humidity": 97,
"temp_kf": 0
},
"weather": [
{
"id": 804,
"main": "Clouds",
"description": "overcast clouds",
"icon": "04n"
}
],
"clouds": {
"all": 88
},
"wind": {
"speed": 1.86,
"deg": 110.002
},
"rain": {},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-05 18:00:00"
},
{
"dt": 1541451600,
"main": {
"temp": 288.122,
"temp_min": 288.122,
"temp_max": 288.122,
"pressure": 1011.78,
"sea_level": 1028.66,
"grnd_level": 1011.78,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 803,
"main": "Clouds",
"description": "broken clouds",
"icon": "04n"
}
],
"clouds": {
"all": 76
},
"wind": {
"speed": 1.76,
"deg": 107
},
"rain": {},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-05 21:00:00"
},
{
"dt": 1541462400,
"main": {
"temp": 286.849,
"temp_min": 286.849,
"temp_max": 286.849,
"pressure": 1011.8,
"sea_level": 1028.82,
"grnd_level": 1011.8,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10n"
}
],
"clouds": {
"all": 44
},
"wind": {
"speed": 1.6,
"deg": 103.501
},
"rain": {
"3h": 0.009999999999998
},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-06 00:00:00"
},
{
"dt": 1541473200,
"main": {
"temp": 285.724,
"temp_min": 285.724,
"temp_max": 285.724,
"pressure": 1011.48,
"sea_level": 1028.43,
"grnd_level": 1011.48,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10n"
}
],
"clouds": {
"all": 64
},
"wind": {
"speed": 1.41,
"deg": 110.002
},
"rain": {
"3h": 0.02
},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-06 03:00:00"
},
{
"dt": 1541484000,
"main": {
"temp": 286.717,
"temp_min": 286.717,
"temp_max": 286.717,
"pressure": 1011.59,
"sea_level": 1028.47,
"grnd_level": 1011.59,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10d"
}
],
"clouds": {
"all": 80
},
"wind": {
"speed": 1.46,
"deg": 105.505
},
"rain": {
"3h": 0.060000000000002
},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-06 06:00:00"
},
{
"dt": 1541494800,
"main": {
"temp": 290.833,
"temp_min": 290.833,
"temp_max": 290.833,
"pressure": 1012.14,
"sea_level": 1028.99,
"grnd_level": 1012.14,
"humidity": 95,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10d"
}
],
"clouds": {
"all": 48
},
"wind": {
"speed": 1.94,
"deg": 108.504
},
"rain": {
"3h": 0.009999999999998
},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-06 09:00:00"
},
{
"dt": 1541505600,
"main": {
"temp": 292.539,
"temp_min": 292.539,
"temp_max": 292.539,
"pressure": 1011.27,
"sea_level": 1028.09,
"grnd_level": 1011.27,
"humidity": 84,
"temp_kf": 0
},
"weather": [
{
"id": 803,
"main": "Clouds",
"description": "broken clouds",
"icon": "04d"
}
],
"clouds": {
"all": 56
},
"wind": {
"speed": 2.36,
"deg": 152.501
},
"rain": {},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-06 12:00:00"
},
{
"dt": 1541516400,
"main": {
"temp": 292.368,
"temp_min": 292.368,
"temp_max": 292.368,
"pressure": 1010.93,
"sea_level": 1027.71,
"grnd_level": 1010.93,
"humidity": 76,
"temp_kf": 0
},
"weather": [
{
"id": 803,
"main": "Clouds",
"description": "broken clouds",
"icon": "04d"
}
],
"clouds": {
"all": 68
},
"wind": {
"speed": 2.46,
"deg": 160.004
},
"rain": {},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-06 15:00:00"
},
{
"dt": 1541527200,
"main": {
"temp": 289.875,
"temp_min": 289.875,
"temp_max": 289.875,
"pressure": 1010.58,
"sea_level": 1027.38,
"grnd_level": 1010.58,
"humidity": 87,
"temp_kf": 0
},
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03n"
}
],
"clouds": {
"all": 48
},
"wind": {
"speed": 2.86,
"deg": 135.503
},
"rain": {},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-06 18:00:00"
},
{
"dt": 1541538000,
"main": {
"temp": 288.49,
"temp_min": 288.49,
"temp_max": 288.49,
"pressure": 1010.36,
"sea_level": 1027.22,
"grnd_level": 1010.36,
"humidity": 92,
"temp_kf": 0
},
"weather": [
{
"id": 802,
"main": "Clouds",
"description": "scattered clouds",
"icon": "03n"
}
],
"clouds": {
"all": 36
},
"wind": {
"speed": 3.37,
"deg": 137.002
},
"rain": {},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-06 21:00:00"
},
{
"dt": 1541548800,
"main": {
"temp": 290.804,
"temp_min": 290.804,
"temp_max": 290.804,
"pressure": 1009.62,
"sea_level": 1026.49,
"grnd_level": 1009.62,
"humidity": 84,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10n"
}
],
"clouds": {
"all": 100
},
"wind": {
"speed": 4.52,
"deg": 155.501
},
"rain": {
"3h": 0.050000000000001
},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-07 00:00:00"
},
{
"dt": 1541559600,
"main": {
"temp": 289.376,
"temp_min": 289.376,
"temp_max": 289.376,
"pressure": 1008.38,
"sea_level": 1025.31,
"grnd_level": 1008.38,
"humidity": 97,
"temp_kf": 0
},
"weather": [
{
"id": 500,
"main": "Rain",
"description": "light rain",
"icon": "10n"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 4.07,
"deg": 175.001
},
"rain": {
"3h": 2.3
},
"sys": {
"pod": "n"
},
"dt_txt": "2018-11-07 03:00:00"
},
{
"dt": 1541570400,
"main": {
"temp": 287.182,
"temp_min": 287.182,
"temp_max": 287.182,
"pressure": 1008.63,
"sea_level": 1025.54,
"grnd_level": 1008.63,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 502,
"main": "Rain",
"description": "heavy intensity rain",
"icon": "10d"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 2.89,
"deg": 240.5
},
"rain": {
"3h": 14.7
},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-07 06:00:00"
},
{
"dt": 1541581200,
"main": {
"temp": 286.969,
"temp_min": 286.969,
"temp_max": 286.969,
"pressure": 1009.79,
"sea_level": 1026.82,
"grnd_level": 1009.79,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 501,
"main": "Rain",
"description": "moderate rain",
"icon": "10d"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 2.76,
"deg": 168.504
},
"rain": {
"3h": 9.11
},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-07 09:00:00"
},
{
"dt": 1541592000,
"main": {
"temp": 287.001,
"temp_min": 287.001,
"temp_max": 287.001,
"pressure": 1009.44,
"sea_level": 1026.24,
"grnd_level": 1009.44,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 501,
"main": "Rain",
"description": "moderate rain",
"icon": "10d"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 3.37,
"deg": 179
},
"rain": {
"3h": 3.51
},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-07 12:00:00"
},
{
"dt": 1541602800,
"main": {
"temp": 286.671,
"temp_min": 286.671,
"temp_max": 286.671,
"pressure": 1009.39,
"sea_level": 1026.15,
"grnd_level": 1009.39,
"humidity": 100,
"temp_kf": 0
},
"weather": [
{
"id": 501,
"main": "Rain",
"description": "moderate rain",
"icon": "10d"
}
],
"clouds": {
"all": 92
},
"wind": {
"speed": 2.75,
"deg": 190.003
},
"rain": {
"3h": 4.76
},
"sys": {
"pod": "d"
},
"dt_txt": "2018-11-07 15:00:00"
}
],
"city": {
"id": 3172394,
"name": "Naples",
"coord": {
"lat": 40.8359,
"lon": 14.2488
},
"country": "IT",
"population": 988972
}
}
"""
    
}
