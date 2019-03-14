//
//  PlayerDetailsViewController.swift
//  Ratings
//
//  Created by Fontys on 08/03/2019.
//  Copyright © 2019 Fontys. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {

    // MARK: - Properties
    var player: Player?
    var game: String = "Chess" {
        didSet {
            detailLabel.text = game
        }
    }

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SavePlayerDetail",
            let playerName = nameTextField.text {
            player = Player(name: playerName, game: game, rating: 1)
        }
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()

}
    
}

// MARK: - IBActions
extension PlayerDetailsViewController {
    
    @IBAction func unwindWithSelectedGame(segue: UIStoryboardSegue) {
        if let gamePickerViewController = segue.source as? GamePickerViewController,
            let selectedGame = gamePickerViewController.selectedGame {
            game = selectedGame
        }
    }
}


// MARK: - UITableViewDelegate
extension PlayerDetailsViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
}

