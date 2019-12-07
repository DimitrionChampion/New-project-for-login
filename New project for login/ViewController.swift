//
//  ViewController.swift
//  New project for login
//
//  Created by Dmitry Gaponenko on 04.12.2019.
//  Copyright © 2019 Dmitry Gaponenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func didTap() {
        
        let deadlineBest = DispatchTime.now() + DispatchTimeInterval.seconds(3)
        
        DispatchQueue.main.asyncAfter(deadline: deadlineBest) {
            print("Login")
            self.performSegue(withIdentifier: "segue.Main.loginToMainApp", sender: self.usernameTextField.text)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let SecondViewController = segue.destination as? SecondViewController, let username = sender as? String {
            SecondViewController.userOneName = username
        }
        
    }
    
    
 

}

