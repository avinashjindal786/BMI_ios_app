//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   var bmiResult = "0.0"
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heigthValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(Int(sender.value))
        weightValue.text = "\(weight) kg"
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format:"%.2f", sender.value)
        heigthValue.text = "\(height) m"
    }
    @IBAction func calPressed(_ sender: UIButton){
        let heightCal = heightSlider.value
        let weightCal = weightSlider.value
        
        let bmi = weightCal / (heightCal * heightCal)
        bmiResult = String(format: "%.1f", bmi)
        print(bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
   override func prepare(for segue:UIStoryboardSegue,sender:Any?){
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmiResult = bmiResult
        }
    }
}


