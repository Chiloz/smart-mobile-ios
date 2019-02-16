//
//  ViewController.swift
//  Soundboard
//
//  Created by Fontys on 14/02/2019.
//  Copyright © 2019 Fontys. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func aTapped(_ sender: Any) {
        
        // Getting the URL
        let url = Bundle.main.url(forResource: "eftelboy", withExtension: "m4a")
        
        // Making sure that we've got the URL, otherwise abort
        guard url != nil else {
            return
        }
        
        // Create the audio player and play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("Error!")
        }
    }
    
    @IBAction func bTapped(_ sender: Any) {
        // Getting the URL
        let url = Bundle.main.url(forResource: "pokemon", withExtension: "m4a")
        
        // Making sure that we've got the URL, otherwise abort
        guard url != nil else {
            return
        }
        
        // Create the audio player and play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("Error!")
        }
    }
    
    @IBAction func cTapped(_ sender: Any) {
        // Getting the URL
        let url = Bundle.main.url(forResource: "strijder", withExtension: "m4a")
        
        // Making sure that we've got the URL, otherwise abort
        guard url != nil else {
            return
        }
        
        // Create the audio player and play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("Error!")
        }
    }
    
    @IBAction func dTapped(_ sender: Any) {
        // Getting the URL
        let url = Bundle.main.url(forResource: "timo", withExtension: "m4a")
        
        // Making sure that we've got the URL, otherwise abort
        guard url != nil else {
            return
        }
        
        // Create the audio player and play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("Error!")
        }
    }
}

