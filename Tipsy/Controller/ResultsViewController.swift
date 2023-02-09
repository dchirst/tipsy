//
//  RestultsViewController.swift
//  Tipsy
//
//  Created by Dan Hirst on 07/02/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var brain: TipBrain?
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if brain != nil {
            splitLabel.text = String(format: "%.2f", brain!.calculateSplit())
            
            summaryLabel.text = "Split between \(brain!.split) people, with \(Int(brain!.tip * 100))% tip."
        }
        
        
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
