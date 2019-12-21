//
//  WebsiteDescription.swift
//  BatteryTool_Hktn_20.12.19
//
//  Created by Максим Окунеев on 12/21/19.
//  Copyright © 2019 Максим Окунеев. All rights reserved.
//

import Foundation

struct WebsiteDescription: Decodable {
    
    let websiteDescription: String?
    let websiteName: String?
    let maindata: [MainData]
    
}
