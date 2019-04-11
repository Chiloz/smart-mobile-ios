//
//  ViewController.swift
//  POC-Money-Converter
//
//  Created by Fontys on 29/03/2019.
//  Copyright © 2019 Fontys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelHomeAmount: UILabel!
    @IBOutlet weak var labelHomeCurrency: UILabel!
    @IBOutlet weak var buttonConfirm: UIButton!
    @IBOutlet weak var viewHomeCurrency: UIView!
    
    var output: Double = 0;
    var input: String = ""
    var conversion: Double = 0.01374

    
    
    @IBOutlet weak var textField: UITextField!
    @IBAction func textFieldChanged(_ sender: Any) {
        
        print(textField.text as Any)
        labelHomeAmount.text = textField.text
        input = textField.text!
        
        if textField.text == nil || textField.text == "" {
            buttonConfirm.backgroundColor = UIColor.gray
            viewHomeCurrency.backgroundColor = UIColor.gray
            buttonConfirm.isEnabled = false
            
        }
        else {
            buttonConfirm.backgroundColor = UIColor.red
            viewHomeCurrency.backgroundColor = UIColor.blue
            buttonConfirm.isEnabled = true
            
            output = conversion * Double(input)!
            print(output)
//            labelHomeAmount.text = String(round(100*output)/100)
            labelHomeAmount.text = String(format: "%.2f", output)
        }
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        print("Confirmed!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
            buttonConfirm.isEnabled = false
        
    }
}

