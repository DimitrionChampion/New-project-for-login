//
//  SecondViewController.swift
//  New project for login
//
//  Created by Dmitry Gaponenko on 07.12.2019.
//  Copyright © 2019 Dmitry Gaponenko. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var userOneName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let unwrappedUsername = self.userOneName else {return}

        textLabel.text = "Hello, \(unwrappedUsername)"
        // Do any additional setup after loading the view.
    }
    
}
