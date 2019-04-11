//
//  SecondViewController.swift
//  POC-TransferData
//
//  Created by Fontys on 04/04/2019.
//  Copyright © 2019 Fontys. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var displayText = ""
    
    @IBOutlet weak var labelText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelText.text = displayText
        // Do any additional setup after loading the view.
    }
}
