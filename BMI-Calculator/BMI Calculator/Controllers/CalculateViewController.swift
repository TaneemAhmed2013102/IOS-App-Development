//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Taneem on 05/10/2024.

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    

    var calculator = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
     
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let value = String(format: "%.2f",sender.value)
        heightLabel.text = "\(value)m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let value = String((Int(sender.value)))
        weightLabel.text = "\(value)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculator.calculateBmi(h: height, w: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculator.getBmi()
            destinationVC.adviceVal = calculator.getAdvice()
            destinationVC.color = calculator.getColor()
        }
    }
    
}

