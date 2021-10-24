//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dmitry Logachev on 24.10.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func getBMIValue() -> String {
        let bmiStringValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiStringValue
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = (weight) / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Good!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Stop eating and run!", color: .red)
        }
    }
    
    func getAdvice() -> String {
        let advice = bmi?.advice ?? "Smth wrong"
        return advice
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color ?? .yellow
        return color
    }
}
