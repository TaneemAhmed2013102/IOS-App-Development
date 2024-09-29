//
//  ViewController.swift
//  Xylophone
//
//  Created by Taneem on 27/09/2024.

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
//        UIView.animate(withDuration: 0.1, animations: {
//                sender.alpha = 0.5
//            }) { _ in
//                // Step 2: After 0.2 seconds delay, restore opacity to 1.0
//                UIView.animate(withDuration: 0.1, delay: 0.2, options: [], animations: {
//                    sender.alpha = 1.0
//                }, completion: nil)
//            }
        
        
        playSound(pass: sender.currentTitle!)
        
        sender.alpha = 0.5 
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    //Bring's sender's opacity back up to fully opaque.
                    sender.alpha = 1.0
                }
        
    }
    
    func playSound(pass: String) {
        let url = Bundle.main.url(forResource: pass, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


