//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dmitry Logachev on 24.10.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float = 0.0
    var bmiStringValue = "0.0"
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = (weight) / pow(height, 2)
    }
    
    mutating func getBMIValue() -> String {
        bmiStringValue = String(format: "%.1f", bmi)
        return bmiStringValue
    }
}
