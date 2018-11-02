//
//  StringExtension.swift
//  Openweathermap
//
//  Created by Diego Caridei on 02/11/2018.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import UIKit
extension String {
    static func unwrap(string:String?) -> String {
        if let value = string { return value }
        else {return ""}
    }
}
