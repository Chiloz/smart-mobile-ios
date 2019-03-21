//
//  ViewController.swift
//  POC-CollectionViewV2
//
//  Created by Fontys on 21/03/2019.
//  Copyright © 2019 Fontys. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let souvenirNames = ["Serbian Mug", "Burek", "Balkan doll", "Postcard", "Serbian flag", "Serbian badge"]
    
    let souvenirImages: [UIImage] = [
    
        UIImage(named: "serbianmug")!,
        UIImage(named: "burek")!,
        UIImage(named: "balkandoll")!,
        UIImage(named: "postcard")!,
        UIImage(named: "serbianflag")!,
        UIImage(named: "serbianeagle")!
    
    ]
    
    let souvenirPrices = ["690", "450", "1900", "70", "920", "450"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return souvenirNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.souvenirLabel.text = souvenirNames[indexPath.item]
        cell.souvenirImageView.image = souvenirImages[indexPath.item]
        cell.souvenirPrice.text = souvenirPrices[indexPath.item]
        
        return cell
    }
}

