//
//  LoginViewController.swift
//  BatteryTool_Hktn_20.12.19
//
//  Created by Максим Окунеев on 12/21/19.
//  Copyright © 2019 Максим Окунеев. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    let correctLogin = "1"
    let correctPassword = "1"
    
    @IBAction func EnterButton(_ sender: Any) {
        if checkLoginPassword(login: loginTextField.text!, password: passwordTextField.text!) == 1 {
            performSegue(withIdentifier: "loginSegue", sender: nil)
        } else if checkLoginPassword(login: loginTextField.text!, password: passwordTextField.text!) == 0 {
            
            let alert = UIAlertController(title: "Error", message: "login or passowd is incorrect", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
            self.present(alert, animated: true)
        }
        
    }
    
 

    func checkLoginPassword (login: String, password: String) -> Int {
        if login == correctLogin && password == correctPassword {
            return 1
        } else {
            print("login or passowd is incorrect")
            return(0)
        }
    }

}
