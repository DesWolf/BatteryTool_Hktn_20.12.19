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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
    }
    
    
    func fetchData() {
            
            //let jsonURLString =  "https://swiftbook.ru//wp-content/uploads/api/api_course"
            //let jsonURLString =  "https://swiftbook.ru//wp-content/uploads/api/api_courses"
            let jsonURLString =  "https://swiftbook.ru//wp-content/uploads/api/api_website_description"
            
            guard let url = URL(string: jsonURLString) else { return }
            
            URLSession.shared.dataTask(with: url) {(data, response, errror) in
               
                guard let data = data else { return }
            
                do{
                    let websiteDescription = try JSONDecoder().decode(WebsiteDescription.self, from: data)
                    print("\(websiteDescription.websiteName ?? "") \(websiteDescription.websiteDescription ?? "")")
                } catch let error {
                    print("Error serrialization Jason", error)
                }
        }.resume()
    }
    
    
    
    @IBAction func clickButton(_ sender: Any) {
     
}
}
