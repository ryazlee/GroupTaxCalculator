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
    var numPeople = 0.0;
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
    
    @IBAction func tipChanged(_ sender: Any) {
        total = 0.0;
        tip = 0.0;
    }
    
    @IBAction func taxChanged(_ sender: Any) {
        total = 0.0;
        tax = 0.0;
    }
    
    @IBAction func calculate(_ sender: Any) {
        var total = 0.0;
        var numPeople = 0.0;
        var totalTax = 0.0;
        var value1 = 0.0;
        var value2 = 0.0;
        var value3 = 0.0;
        var value4 = 0.0;
        var value5 = 0.0;
        var value6 = 0.0;
        var value7 = 0.0;
        var value8 = 0.0;
        
        if let value = amount1.text{
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value1 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount2.text{
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value2 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount3.text{
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value3 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount4.text{
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value4 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount5.text{
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value5 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount6.text{
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value6 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount7.text{
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value7 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount8.text{
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value8 = temp!;
                numPeople += 1;
            }
        }
        
        total = value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8;
        
        if let value = taxAmount.text{
            let temp = Double(value);
            if temp != nil {
                tax = temp!/100;
            }
        }
        
        if let value = tipAmount.text{
            let temp = Double(value);
            if temp != nil {
                tip = total * temp!/100;
            }
        }
        
        if tax != 0 && tip != 0{
            totalLabel.text = "$" + String(total + (total * tax) + tip);
        } else if tax == 0 && tip == 0{
            totalLabel.text = "$" + String(total);
        } else if tax != 0 && tip == 0{
            totalLabel.text = "$" + String(total * (1+tax));
        } else{
            totalLabel.text = "$" + String(total + tip);
        }
        totalTax = total * (tax);
        
        if value1 != 0.0 {
            total1.text = "$" + String(format: "%.2f", Double(value1/total) * totalTax + value1 + tip/numPeople);
        }
        
        if value2 != 0.0 {
            total2.text = "$" + String(format: "%.2f", Double(value2/total) * totalTax + value2 + tip/numPeople);
        }
        
        if value3 != 0.0 {
            total3.text = "$" + String(format: "%.2f", Double(value3/total) * totalTax + value3 + tip/numPeople);
        }
        
        if value4 != 0.0 {
            total4.text = "$" + String(format: "%.2f", Double(value4/total) * totalTax + value4 + tip/numPeople);
        }
        
        if value5 != 0.0 {
            total5.text = "$" + String(format: "%.2f", Double(value5/total) * totalTax + value5 + tip/numPeople);
        }
        
        if value6 != 0.0 {
            total6.text = "$" + String(format: "%.2f", Double(value6/total) * totalTax + value6 + tip/numPeople);
        }
        
        if value7 != 0.0 {
            total7.text = "$" + String(format: "%.2f", Double(value7/total) * totalTax + value7 + tip/numPeople);
        }
        
        if value8 != 0.0 {
            total8.text = "$" + String(format: "%.2f", Double(value8/total) * totalTax + value8 + tip/numPeople);
        }
    }
    
    @IBOutlet weak var tipAmount: UITextField!
    @IBOutlet weak var taxAmount: UITextField!
    @IBOutlet weak var amount1: UITextField!
    @IBOutlet weak var amount2: UITextField!
    @IBOutlet weak var amount3: UITextField!
    @IBOutlet weak var amount4: UITextField!
    @IBOutlet weak var amount5: UITextField!
    @IBOutlet weak var amount6: UITextField!
    @IBOutlet weak var amount7: UITextField!
    @IBOutlet weak var amount8: UITextField!
    
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
