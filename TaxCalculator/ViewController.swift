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
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func changeTextTotal(_ sender: Any) {
        // Use "if let" to get string from text field.
        // if let value = totalText.text {simpleLabel.text = value.uppercased()}
       
        if let value = totalText.text{
            var temp = Double(value);
            if temp != nil {
                total = Double(value)!;
            } else{
                total = 0;
            }
            totalLabel.text = "$" + String(total);
            
        }
    }
    
    @IBAction func changeTextTax(_ sender: Any) {
        if let value = taxText.text{
            var temp = Double(value);
            if temp != nil {
                tax = Double(value)!/100;
            } else {
                tax = 0;
            }
            taxLabel.text = String(tax*100) + "%";
            atLabel.text = "at";
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        outputLabel.text = "$" + String(total * (1 + tax));
    }
    
    @IBOutlet weak var atLabel: UILabel!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var taxText: UITextField!
    @IBOutlet weak var totalText: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
}

