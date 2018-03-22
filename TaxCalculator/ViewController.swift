//
//  ViewController.swift
//  TaxCalculator
//
//  Created by Ryan Lee on 3/21/18.
//  Copyright © 2018 Ryan Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var total = 0.0;
    var tax = 0.0;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeTextTotal(_ sender: Any) {
        // Use "if let" to get string from text field.
        // if let value = totalText.text {simpleLabel.text = value.uppercased()}
        if let value = totalText.text{
            if value != nil && value != "" && value != "."{
                total = Double(value)!;
                toalLabel.text = "$" + value + " + ";
            }
        }
    }
    
    @IBAction func changeTextTax(_ sender: Any) {
        if let value = taxText.text{
            if value != nil && value != "" && value != "."{
                tax = Double(value)!/100;
                taxLabel.text = value + "%";
            }
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        outputLabel.text = "$" + String(total * (1 + tax));
    }

    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var taxText: UITextField!
    @IBOutlet weak var totalText: UITextField!
    @IBOutlet weak var toalLabel: UILabel!
}

