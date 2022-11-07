//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Avinash jindal on 05/11/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var showResult: UILabel!
    var bmiResult : String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showResult.text = bmiResult
        
    }
    
    @IBAction func reCalButton(_ sender: UIButton) {
        self.dismiss(animated: trur, completion: nil)
    }
    
  
    

}
