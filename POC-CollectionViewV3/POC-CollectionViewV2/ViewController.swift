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
    @IBOutlet weak var labelTeBesteden: UILabel!
    
    var teBesteden = 2750
    
    let souvenirNames = ["Serbian Mug", "Burek", "Balkan doll", "Postcard", "Serbian flag", "Serbian badge", "Serbian Mug", "Burek", "Balkan doll", "Postcard", "Serbian flag", "Serbian badge"]
    
    let souvenirImages: [UIImage] = [
    
        UIImage(named: "serbianmug")!,
        UIImage(named: "burek")!,
        UIImage(named: "balkandoll")!,
        UIImage(named: "postcard")!,
        UIImage(named: "serbianflag")!,
        UIImage(named: "serbianeagle")!,
        UIImage(named: "serbianmug")!,
        UIImage(named: "burek")!,
        UIImage(named: "balkandoll")!,
        UIImage(named: "postcard")!,
        UIImage(named: "serbianflag")!,
        UIImage(named: "serbianeagle")!
    
    ]
    
    let souvenirPrices = [690, 450, 1900, 70, 920, 450, 690, 450, 1900, 70, 920, 450]
    
    var selectedSouvenirs = [Int]()
    
    
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
        cell.souvenirPrice.text = String(souvenirPrices[indexPath.item])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if selectedSouvenirs.contains(indexPath.item) {
            let cell = collectionView.cellForItem(at: indexPath)
            cell?.layer.backgroundColor = UIColorFromHex(rgbValue: 0xD35451).cgColor
            selectedSouvenirs = selectedSouvenirs.filter(){$0 != indexPath.item}
            
            teBesteden += souvenirPrices[indexPath.item]
            labelTeBesteden.text = String(teBesteden)
        }
        else {
            let cell = collectionView.cellForItem(at: indexPath)
            cell?.layer.backgroundColor = UIColorFromHex(rgbValue: 0x70C4D3).cgColor
            selectedSouvenirs.append(indexPath.item)
            
            teBesteden -= souvenirPrices[indexPath.item]
            labelTeBesteden.text = String(teBesteden)
        }
//        let cell = collectionView.cellForItem(at: indexPath)
//        cell?.layer.backgroundColor = UIColorFromHex(rgbValue: 0x70C4D3).cgColor
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//        let cell = collectionView.cellForItem(at: indexPath)
//        cell?.layer.backgroundColor = UIColorFromHex(rgbValue: 0xD35451).cgColor
    }
    
    // Kleuren uit hexadecimalen
    // Voorbeeld voor #70C4D3: UIColorFromHex(rgbValue: 0x70C4D3).cgColor
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
}

