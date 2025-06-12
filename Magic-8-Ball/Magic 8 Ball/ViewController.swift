//
//  ViewController.swift
//  Magic 8 Ball
//


import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball5"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball1")]

    @IBOutlet weak var viewImage: UIImageView!
    
    
    @IBAction func askButtonPress(_ sender: UIButton) {
        
        viewImage.image = ballArray[Int.random(in: 1...4)]
    }
    
}

