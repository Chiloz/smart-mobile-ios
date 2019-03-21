//
//  ViewController.swift
//  POC-ShopScreen
//
//  Created by Fontys on 21/03/2019.
//  Copyright © 2019 Fontys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelCurrencyForeign: UILabel!
    @IBOutlet weak var labelAmountForeign: UILabel!
    
    @IBOutlet weak var labelCurrencyHome: UILabel!
    @IBOutlet weak var labelAmountHome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        labelCurrencyForeign.text = "RSD"
        labelAmountForeign.text = "2750"
        
        labelCurrencyHome.text = "EUR"
        labelAmountHome.text = "23,27"
        
    }


}

