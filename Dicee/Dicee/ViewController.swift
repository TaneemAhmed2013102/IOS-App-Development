//
//  ViewController.swift
//  Dicee-iOS
//
//  Created by Taneem on 22/09/2024.
//


import UIKit

class ViewController: UIViewController {
    
    //IBOutlet refers to the Object view of the UI
    @IBOutlet weak var diceImageViewOne:UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    var leftDice = 0, rightDice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func rollButtonPress(_ sender: UIButton) {
        
        let dices = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        leftDice =  Int(arc4random_uniform(6))
        rightDice = Int.random(in: 0...5)
        //diceImageViewOne.image = dices.randomElement()
        diceImageViewOne.image = dices[leftDice]
        diceImageViewTwo.image = dices[rightDice]
        print("\(leftDice+1),\(rightDice+1)")
    }
    
}

