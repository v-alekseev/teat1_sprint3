//
//  ViewController.swift
//  teat1_sprint3
//
//  Created by Vitaly Alekseev on 12.02.2023.
//

import UIKit

class ViewController: UIViewController {


    private var counter: Counter = Counter(startValue: 0, counterStep: 1)
    
    
    @IBOutlet weak var counterButton: UIButton!
    
    @IBOutlet weak var counterValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setCounterLabel(text: counter.getText())
    
    }
    
    @IBAction func buttonTapDown(_ sender: UIButton) {
        counter.incrementCounterLabel()
        setCounterLabel(text: counter.getText())
    }
    
    public func setCounterLabel(text: String) {
        counterValueLabel.text = text
    }
}


