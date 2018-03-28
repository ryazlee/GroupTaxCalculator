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
        //You can specify your own selector to be send in "myAction"
        tipAmount.addDoneButtonToKeyboard(myAction:  #selector(self.tipAmount.resignFirstResponder))
        taxAmount.addDoneButtonToKeyboard(myAction:  #selector(self.tipAmount.resignFirstResponder))
        amount1.addDoneButtonToKeyboard(myAction:  #selector(self.tipAmount.resignFirstResponder))
        amount2.addDoneButtonToKeyboard(myAction:  #selector(self.tipAmount.resignFirstResponder))
        amount3.addDoneButtonToKeyboard(myAction:  #selector(self.tipAmount.resignFirstResponder))
        amount4.addDoneButtonToKeyboard(myAction:  #selector(self.tipAmount.resignFirstResponder))
        amount5.addDoneButtonToKeyboard(myAction:  #selector(self.tipAmount.resignFirstResponder))
        amount6.addDoneButtonToKeyboard(myAction:  #selector(self.tipAmount.resignFirstResponder))
        amount7.addDoneButtonToKeyboard(myAction:  #selector(self.tipAmount.resignFirstResponder))
        amount8.addDoneButtonToKeyboard(myAction:  #selector(self.tipAmount.resignFirstResponder))
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func beginEditText1(_ sender: Any) {
        moveTextField(amount1, moveDistance: -250, up: true)
    }
    
    @IBAction func endEditText1(_ sender: Any) {
        moveTextField(amount1, moveDistance: -250, up: false)
    }
    
    @IBAction func beginEditText2(_ sender: Any) {
        moveTextField(amount2, moveDistance: -250, up: true)
    }
    
    @IBAction func endEditText2(_ sender: Any) {
        moveTextField(amount2, moveDistance: -250, up: false)
    }
    
    @IBAction func beginEditText3(_ sender: Any) {
        moveTextField(amount3, moveDistance: -250, up: true)
    }
    
    @IBAction func endEditText3(_ sender: Any) {
        moveTextField(amount3, moveDistance: -250, up: false)
    }
    
    @IBAction func beginEditText4(_ sender: Any) {
        moveTextField(amount4, moveDistance: -250, up: true)
    }
    
    @IBAction func endEditText4(_ sender: Any) {
        moveTextField(amount4, moveDistance: -250, up: false)
    }
    
    @IBAction func beginEditText5(_ sender: Any) {
        moveTextField(amount5, moveDistance: -250, up: true)
    }
    
    @IBAction func endEditText5(_ sender: Any) {
        moveTextField(amount5, moveDistance: -250, up: false)
    }
    
    @IBAction func beginEditText6(_ sender: Any) {
        moveTextField(amount6, moveDistance: -250, up: true)
    }
    
    @IBAction func endEditText6(_ sender: Any) {
        moveTextField(amount6, moveDistance: -250, up: false)
    }
    
    @IBAction func beginEditText7(_ sender: Any) {
        moveTextField(amount7, moveDistance: -250, up: true)
    }
    
    @IBAction func endEditText7(_ sender: Any) {
        moveTextField(amount7, moveDistance: -250, up: false)
    }
    
    @IBAction func beginEditText8(_ sender: Any) {
        moveTextField(amount8, moveDistance: -250, up: true)
    }
    
    @IBAction func endEditText8(_ sender: Any) {
        moveTextField(amount8, moveDistance: -250, up: false)
    }
    
    @IBAction func beginEditTax(_ sender: Any) {
        moveTextField(taxAmount, moveDistance: -250, up: true)
    }
    
    @IBAction func endEditTax(_ sender: Any) {
        moveTextField(taxAmount, moveDistance: -250, up: false)
    }
    
    @IBAction func beginEditTip(_ sender: Any) {
        moveTextField(tipAmount, moveDistance: -250, up: true)
    }
    
    @IBAction func endEditTip(_ sender: Any) {
        moveTextField(tipAmount, moveDistance: -250, up: false)
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
        
        total = 0.0;
        numPeople = 0.0;
        totalTax = 0.0;
        value1 = 0.0;
        value2 = 0.0;
        value3 = 0.0;
        value4 = 0.0;
        value5 = 0.0;
        value6 = 0.0;
        value7 = 0.0;
        value8 = 0.0;
        
        if let value = amount1.text{
            value1 = 0.0;
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value1 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount2.text{
            value2 = 0.0;
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value2 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount3.text{
            value3 = 0.0;
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value3 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount4.text{
            value4 = 0.0;
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value4 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount5.text{
            value5 = 0.0;
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value5 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount6.text{
            value6 = 0.0;
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value6 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount7.text{
            value7 = 0.0;
            let temp = Double(value);
            if temp != nil && temp != 0.0 {
                value7 = temp!;
                numPeople += 1;
            }
        }
        
        if let value = amount8.text{
            value8 = 0.0;
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
                taxDisplay.text = "Tax Total: $" + String(format: "%.2f", total * tax)
            }
        }
        
        if let value = tipAmount.text{
            let temp = Double(value);
            if temp != nil {
                tip = total * temp!/100;
                tipDisplay.text = "Tip Total: $" + String(format: "%.2f", tip)
            }
        }
        
        if tax != 0 && tip != 0{
            totalLabel.text = "$" + String(format: "%.2f", total + (total * tax) + tip);
        } else if tax == 0 && tip == 0{
            totalLabel.text = "$" + String(format: "%.2f",total);
        } else if tax != 0 && tip == 0{
            totalLabel.text = "$" + String(format: "%.2f", total * (1+tax));
        } else{
            totalLabel.text = "$" + String(format: "%.2f", total + tip);
        }
        totalTax = total * (tax);
        
        if value1 != 0.0 {
            total1.text = "$" + String(format: "%.2f", Double(value1/total) * totalTax + value1 + tip/numPeople);
        } else {
            total1.text = "$" + String(0.00);
        }
        
        if value2 != 0.0 {
            total2.text = "$" + String(format: "%.2f", Double(value2/total) * totalTax + value2 + tip/numPeople);
        } else {
            total2.text = "$" + String(0.00);
        }
        
        if value3 != 0.0 {
            total3.text = "$" + String(format: "%.2f", Double(value3/total) * totalTax + value3 + tip/numPeople);
        } else {
            total3.text = "$" + String(0.00);
        }
        
        if value4 != 0.0 {
            total4.text = "$" + String(format: "%.2f", Double(value4/total) * totalTax + value4 + tip/numPeople);
        } else {
            total4.text = "$" + String(0.00);
        }
        
        if value5 != 0.0 {
            total5.text = "$" + String(format: "%.2f", Double(value5/total) * totalTax + value5 + tip/numPeople);
        } else {
            total5.text = "$" + String(0.00);
        }
        
        if value6 != 0.0 {
            total6.text = "$" + String(format: "%.2f", Double(value6/total) * totalTax + value6 + tip/numPeople);
        } else {
            total6.text = "$" + String(0.00);
        }
        
        if value7 != 0.0 {
            total7.text = "$" + String(format: "%.2f", Double(value7/total) * totalTax + value7 + tip/numPeople);
        } else {
            total7.text = "$" + String(0.00);
        }
        
        if value8 != 0.0 {
            total8.text = "$" + String(format: "%.2f", Double(value8/total) * totalTax + value8 + tip/numPeople);
        } else {
            total8.text = "$" + String(0.00);
        }
    }
    
    
    
    // Move the text field in a pretty animation!
    func moveTextField(_ textField: UITextField, moveDistance: Int, up: Bool) {
        let moveDuration = 0.3
        let movement: CGFloat = CGFloat(up ? moveDistance : -moveDistance)
        
        UIView.beginAnimations("animateTextField", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(moveDuration)
        self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
        UIView.commitAnimations()
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
    @IBOutlet weak var taxDisplay: UILabel!
    @IBOutlet weak var tipDisplay: UILabel!
    
}
