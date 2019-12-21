//
//  File.swift
//  BatteryTool_Hktn_20.12.19
//
//  Created by Максим Окунеев on 12/21/19.
//  Copyright © 2019 Максим Окунеев. All rights reserved.
//

import Foundation

struct Battery {
    
    var serialNumber: String
    var power: String
    var capasity: String
    var image: String
    
    static let batteriesList = [
        "Battery №1", "Battery №2", "Battery №3"
    ]
    
    static func getBattery() -> [Battery] {
        
        var batteries = [Battery]()
        
        for battery in batteriesList {
            batteries.append(Battery(serialNumber: battery, power: "Power 10W", capasity: "Capasity 100W", image: battery))
        }
        
        return batteries
    }
}
