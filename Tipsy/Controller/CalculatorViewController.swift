//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var splitNumberButton: UILabel!
    @IBOutlet weak var twentyPctButton: UIButton!
    
    var brain = TipBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        let newTip: Float
        switch sender.currentTitle! {
        case "0%":
            newTip = 0.0
        case "10%":
            newTip = 0.1
        default:
            newTip = 0.2
        }
            
        brain.updateTip(newTip: newTip)
        billTextField.endEditing(true)
    }
    
    
    @IBAction func updateSplit(_ sender: UIStepper) {
        brain.updateSplit(newSplit: Int(sender.value))
        splitNumberButton.text = String(format: "%.0f", sender.value)
        billTextField.endEditing(true)

    }
    
    @IBAction func updateBill(_ sender: UITextField) {
        if !(sender.text == "") {
            brain.updateBill(newBill: Float(sender.text!)!)
        }
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.brain = brain
            
        }
    }
    
    
}

