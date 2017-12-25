//
//  ViewController.swift
//  Tipper
//
//  Created by Jeph on 12/25/17.
//  Copyright © 2017 Jeph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.billField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let greyColor = UIColor(displayP3Red: 199.0/255.0, green: 199.0/255.0, blue: 204.0/255.0, alpha: 1)
        
        let tipPercentages = [0.15,0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        if(tip == 0){
            tipLabel.textColor = greyColor
            totalLabel.textColor = greyColor
            tipLabel.text = "Tip"
            totalLabel.text = "Total"
        } else {
            tipLabel.textColor = UIColor.black
            totalLabel.textColor = UIColor.black
            tipLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f", total)
        }
        
    }
    
}

