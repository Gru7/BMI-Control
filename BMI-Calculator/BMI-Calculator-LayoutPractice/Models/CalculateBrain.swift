//
//  CalculateBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Guseyn on 11.05.2021.
//
import UIKit


struct CalculateBrain{
    
    
    var bmi:BMI?
    
    
    
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValue = weight/(height*height)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    func getBmiValue()->String{
        let bmi1ToDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi1ToDecimal
    }
    func getAdvice()->String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    
}
