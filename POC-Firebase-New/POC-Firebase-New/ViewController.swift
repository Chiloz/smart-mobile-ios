//
//  ViewController.swift
//  POC-Firebase-New
//
//  Created by Fontys on 22/03/2019.
//  Copyright © 2019 Fontys. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    @IBOutlet weak var textDisplay: UILabel!
    
//    1 var databaseRefer: DatabaseReference!
//    1 var databaseHandle: DatabaseHandle!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//    1   // Create record in Firebase
//    1   databaseRefer = Database.database().reference()
//    1   databaseRefer.child("name").childByAutoId().setValue("Noedel")
//    1   databaseRefer.child("name").childByAutoId().setValue("Samet")
//
//    1   // Read data from Firebase
//    1   databaseHandle = databaseRefer.child("name").observe(.childAdded, with: { (data) in
//    1       let name : String = (data.value as? String)!
//    1       debugPrint(name)
//    1   })
        
        let ref = Database.database().reference(withPath: "souvenirs")
        
        ref.observe(.value, with: { snapshot in
            debugPrint(snapshot.value as Any)
        })

    }
}

