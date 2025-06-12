//
//  Bmi.swift
//  BMI Calculator
//
//  Created by Taneem Ahmed on 11/10/24.


import UIKit

struct BMI{
    
    let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float, advice: String, color: UIColor) {
        self.value = value
        self.advice = advice
        self.color = color
    }
}
