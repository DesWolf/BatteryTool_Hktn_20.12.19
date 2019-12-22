//
//  MainViewController.swift
//  BatteryTool_Hktn_20.12.19
//
//  Created by Максим Окунеев on 12/21/19.
//  Copyright © 2019 Максим Окунеев. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var homeLabel: UILabel!
    @IBOutlet var gridLabel: UILabel!
    @IBOutlet var sunLabel: UILabel!
    @IBOutlet var wattsBatteryLabel: UILabel!
    @IBOutlet var lineBtH: UIImageView!
    
    let userdata = ["Course": "Networking"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        let timer = Timer.scheduledTimer(withTimeInterval: 60.0, repeats: true) { timer in
        self.fetchData()
        }
        
        }
    
    func fetchData() {
            
        let jsonURLString =  "http://34.245.194.249/wats/get-statistic-day/WB-4E5436373555029B/"
        guard let url = URL(string: jsonURLString) else { return }
            
        URLSession.shared.dataTask(with: url) {(data, response, errror) in
            guard let data = data else { return }
            
            do{
                let courses = try JSONDecoder().decode(Course.self, from: data)
                    
                print("consumption_load_from_grid \(courses.consumption_load_from_grid)")
                print("consumption_load_from_solar \(courses.consumption_load_from_solar)")
                print("capacity \(courses.battery_remaining_capacity) / \(courses.battery_full_capacity)")
                    
                DispatchQueue.main.async {
                       
                self.homeLabel.text = "Home \(Double(round((courses.consumption_load_from_grid + courses.consumption_load_from_solar + courses.consumption_load_from_battery))) ) W"
                self.gridLabel.text = "\(Double(round(courses.consumption_load_from_grid))) W"
                self.sunLabel.text = "\(Double(round(courses.consumption_load_from_solar))) W"
                self.wattsBatteryLabel.text = "Capasity \(Double(round(courses.battery_remaining_capacity))) W / \(Double(round(courses.battery_full_capacity))) W"
                }
                
                } catch let error {
                    print("Error serrialization Jason", error)
                }
        }.resume()
    }
    
    @IBAction func clickButton(_ sender: Any) {
       fetchData()
    }
}

