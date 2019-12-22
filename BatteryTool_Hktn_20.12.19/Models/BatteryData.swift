//
//  BatteryData.swift
//  BatteryTool_Hktn_20.12.19
//
//  Created by Максим Окунеев on 12/22/19.
//  Copyright © 2019 Максим Окунеев. All rights reserved.
//

import Foundation

struct StatisticData: Decodable {
    
    let name: String?
    let data: [Info]?
}
