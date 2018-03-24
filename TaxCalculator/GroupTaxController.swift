//
//  GroupTaxController.swift
//  TaxCalculator
//
//  Created by Ryan Lee on 3/22/18.
//  Copyright © 2018 Ryan Lee. All rights reserved.
//

import UIKit

class GroupTaxController: UIViewController {
    var total = 0.0;
    var tax = 0.0;
    var tip = 0.0;
    var totalTax = 0.0;
    var value1 = 0.0;
    var value2 = 0.0;
    var value3 = 0.0;
    var value4 = 0.0;
    var value5 = 0.0;
    var value6 = 0.0;
    var value7 = 0.0;
    var value8 = 0.0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: (#selector(UIView.endEditing(_:)))))
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func taxChanged(_ sender: Any) {
        if let value = taxAmount.text{
            let temp = Double(value);
            if temp != nil {
                tax = Double(value)!/100;
            }
        }
    }
    
    @IBAction func calculate(_ sender: Any) {
        
        if let value = amount1.text{
            let temp = Double(value);
            if temp != nil {
                value1 = temp!;
            }
        }
        
        if let value = amount2.text{
            let temp = Double(value);
            if temp != nil {
                value2 = temp!;
            }
        }
        
        if let value = amount3.text{
            let temp = Double(value);
            if temp != nil {
                value3 = temp!;
            }
        }
        
        if let value = amount4.text{
            let temp = Double(value);
            if temp != nil {
                value4 = temp!;
            }
        }
        
        if let value = amount5.text{
            let temp = Double(value);
            if temp != nil {
                value5 = temp!;
            }
        }
        
        if let value = amount6.text{
            let temp = Double(value);
            if temp != nil {
                value6 = temp!;
            }
        }
        
        if let value = amount7.text{
            let temp = Double(value);
            if temp != nil {
                value7 = temp!;
            }
        }
        
        if let value = amount8.text{
            let temp = Double(value);
            if temp != nil {
                value8 = temp!;
            }
        }
        
        total = value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8;
        if tax != 0 {
            totalLabel.text = "$" + String(total * (1+tax));
        } else{
            totalLabel.text = "$" + String(total);
        }
        totalTax = total * (tax);
        total1.text = "$" + String(format: "%.2f", Double(value1/total) * totalTax + value1);
        total2.text = "$" + String(format: "%.2f", Double(value2/total) * totalTax + value2);
        total3.text = "$" + String(format: "%.2f", Double(value3/total) * totalTax + value3);
        total4.text = "$" + String(format: "%.2f", Double(value4/total) * totalTax + value4);
        total5.text = "$" + String(format: "%.2f", Double(value5/total) * totalTax + value5);
        total6.text = "$" + String(format: "%.2f", Double(value6/total) * totalTax + value6);
        total7.text = "$" + String(format: "%.2f", Double(value7/total) * totalTax + value7);
        total8.text = "$" + String(format: "%.2f", Double(value8/total) * totalTax + value8);
        
    }
    
    @IBAction func tipChanged(_ sender: Any) {
        if let value = tipAmount.text{
            let temp = Double(value);
            if temp != nil {
                tip = Double(value)!;
            }
        }
    }
    
    @IBOutlet weak var taxAmount: UITextField!
    @IBOutlet weak var amount1: UITextField!
    @IBOutlet weak var amount2: UITextField!
    @IBOutlet weak var amount3: UITextField!
    @IBOutlet weak var amount4: UITextField!
    @IBOutlet weak var amount5: UITextField!
    @IBOutlet weak var amount6: UITextField!
    @IBOutlet weak var amount7: UITextField!
    @IBOutlet weak var amount8: UITextField!
    @IBOutlet weak var tipAmount: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var total1: UILabel!
    @IBOutlet weak var total2: UILabel!
    @IBOutlet weak var total3: UILabel!
    @IBOutlet weak var total4: UILabel!
    @IBOutlet weak var total5: UILabel!
    @IBOutlet weak var total6: UILabel!
    @IBOutlet weak var total7: UILabel!
    @IBOutlet weak var total8: UILabel!
    
    
}
