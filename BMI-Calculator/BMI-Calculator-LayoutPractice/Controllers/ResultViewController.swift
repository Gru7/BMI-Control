//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Guseyn on 11.05.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    var bmiValue:String?
    var advice:String?
    var color:UIColor?
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        //  чтобы второй сториборд закрывался
        self.dismiss(animated: true, completion: nil)
    }
    
    
}


