//
//  CalculateViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Guseyn on 11.05.2021.
//
import UIKit

class CalculateViewController: UIViewController 
{
    
    
    var calculateBrain = CalculateBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightLabel.text = "0.0m"
        weightLabel.text = "0kg"
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        // heightLabel.text = String(format: "%.2f" , sender.value) + "m"
        let height = String(format:"%.2f",sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        //weightLabel.text = String(format:"%.0f",sender.value) + "kg"
        let weight = String(format:"%.0f",sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculateBrain.calculateBMI(height:height,weight:weight)
       
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
    
    override func prepare(for segue : UIStoryboardSegue, sender:Any?){
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculateBrain.getBmiValue()
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.color = calculateBrain.getColor()
        }
        
        
    }
}
