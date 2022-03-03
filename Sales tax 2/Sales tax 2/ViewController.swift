//
//  ViewController.swift
//  Sales tax 2
//
//  Created by Nahid Hasan on 18/4/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var taxLable: UILabel!
    
    @IBOutlet weak var priceInput: UITextField!
    @IBOutlet weak var taxInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLable.text = "$"
        taxLable.text = "$"
    }

    @IBAction func calculateButton(_ sender: Any) {
        
        let price = Double(priceInput.text!)!
        let tax = Double(taxInput.text!)!
        
        
        let total_tax = price * (tax / 100)
        let total_price = price + total_tax
        
        resultLable.text = "$\(total_price)"
        taxLable.text = "$\(total_tax)"
        
        
        
    }
    
}

