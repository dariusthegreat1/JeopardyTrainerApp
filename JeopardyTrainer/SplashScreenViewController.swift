//
//  SplashScreenViewController.swift
//  JeopardyTrainer
//
//  Created by Nick Haidari on 12/15/19.
//  Copyright © 2019 Nick Haidari. All rights reserved.
//

import UIKit
import AVFoundation

class SplashScreenViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    
    var yAtLaunch: CGFloat = 0.0
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yAtLaunch = logoImageView.frame.origin.y
        logoImageView.frame.origin.y = self.view.frame.height
    }

    override func viewDidAppear(_ animated: Bool) {
        playSound(soundName: "jeopardy-intro", audioPlayer: &audioPlayer)
        UIView.animate(withDuration: 2, animations: {self.logoImageView.frame.origin.y = self.yAtLaunch})
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if audioPlayer.isPlaying {
            audioPlayer.stop()
            
        }
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR, couldn't play sound from file \(soundName)")
            }
        } else {
            print("Error")
        }
    }
    
    @IBAction func logoTapped(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "ShowCategories", sender: nil)
        
    }
}
