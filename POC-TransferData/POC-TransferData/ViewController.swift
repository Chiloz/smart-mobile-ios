//
//  ViewController.swift
//  POC-TransferData
//
//  Created by Fontys on 04/04/2019.
//  Copyright © 2019 Fontys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    @IBAction func buttonPressed(_ sender: Any) {
        if let VC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            VC.displayText = "Hallo"
            self.navigationController!.pushViewController(VC, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

