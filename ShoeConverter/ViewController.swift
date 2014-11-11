//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Yosemite on 11/10/14.
//  Copyright (c) 2014 Yosemite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShowSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        let conversionConstant = 30

        mensConvertedShowSizeLabel.hidden = false
        mensConvertedShowSizeLabel.text = "\(sizeFromTextField+conversionConstant)" + " in European shoe size"
        mensShoeSizeTextField.resignFirstResponder()
    }
    
    @IBAction func convertWomenButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField+conversionConstant)" + " in European woemn shoe size"
        womensShoeSizeTextField.resignFirstResponder()
    }
    
    
    
}

