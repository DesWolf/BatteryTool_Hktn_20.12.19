//
//  MainData.swift
//  BatteryTool_Hktn_20.12.19
//
//  Created by Максим Окунеев on 12/21/19.
//  Copyright © 2019 Максим Окунеев. All rights reserved.
//

import Foundation

struct Course: Decodable {
    
    let id: Int
    let bat: String
    let consumption_battery_from_grid: Double
    let consumption_battery_from_solar: Double
    let consumption_load_from_grid: Double
    let consumption_load_from_solar: Double
    let consumption_load_from_battery: Double
    let meter_battery_from_grid: Double
    let meter_load_from_grid: Double
    let meter_battery_from_solar: Double
    let meter_load_from_solar: Double
    let meter_load_from_battery: Double
    let battery_remaining_capacity: Double
    let battery_full_capacity: Double
    let temperature1: Double
    let temperature2: Double
    let temperature3: Double
    let grid_frequency: Double
}
