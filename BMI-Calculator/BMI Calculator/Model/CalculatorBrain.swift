//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Taneem Ahmed on 11/10/24.

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    mutating func calculateBmi(h: Float,w: Float){
        let bmiVal = w / pow(h,2)
        
        if bmiVal < 18.5{
            bmi = BMI(value: bmiVal, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiVal < 24.9{
                bmi = BMI(value: bmiVal, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            bmi = BMI(value: bmiVal, advice: "Eat less pies", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBmi() -> String {
        let bmiValue = String(format: "%.1f",bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error!"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}

