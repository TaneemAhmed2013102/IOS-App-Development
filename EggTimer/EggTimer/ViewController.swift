//
//  ViewController.swift
//  EggTimer
//
//  Created by Taneem on 29/09/2024.

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    var timer = Timer()
    var player: AVAudioPlayer!
    var TotalTime = 0
    var secondsPassed = 0
    
    @IBOutlet weak var screenShow: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        // Get the hardness from the button's title
        
        let hardness = sender.currentTitle!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        screenShow.text = hardness
        
        // Set the countdown time based on the selected hardness
        TotalTime = eggTimes[hardness] ?? 0
        
        // Print the initial selected time
        print("Starting timer for \(TotalTime) seconds.")
        
        // Start the countdown
        startCountdown()
    }
    
    func startCountdown() {
        // Invalidate any existing timer to avoid overlap
        timer.invalidate()
        
        // Start a new timer that updates every second
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCountdown), userInfo: nil, repeats: true)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    @objc func updateCountdown() {
        if secondsPassed < TotalTime {
            
            secondsPassed += 1
            let percentageProgress = Float(secondsPassed) / Float(TotalTime)
            
            progressBar.progress = Float(percentageProgress)
            print(Float(percentageProgress))
            
            print("Passsed \(secondsPassed) seconds.")
        } else {
            // Invalidate the timer when countdown reaches 0
            timer.invalidate()
            playSound(soundName: "alarm_sound")
            screenShow.text = "DONE!"
            
        }
    }
}

