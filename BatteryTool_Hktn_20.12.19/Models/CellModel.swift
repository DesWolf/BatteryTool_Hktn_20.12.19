//
//  CellModel.swift
//  BatteryTool_Hktn_20.12.19
//
//  Created by Максим Окунеев on 12/21/19.
//  Copyright © 2019 Максим Окунеев. All rights reserved.
//

import Foundation

struct Histrory {
    
    var history: String

    
    static let historyList = [
                                "20.12.2019 12:20 Electrisity power is off",
                                "20.12.2019 09:20 Batary power is not enougth, electrisity power is on",
                                "19.12.201919:00 Battries fully charged"
    ]
    
    static func getHistrory() -> [Histrory] {
        
        var histories = [Histrory]()
        
        for history in historyList {
            histories.append(Histrory(history: history))
        }
        
        return histories
    }
}
