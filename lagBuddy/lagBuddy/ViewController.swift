//
//  ViewController.swift
//  lagBuddy
//
//  Created by Maryum Styles on 4/5/16.
//  Copyright © 2016 Maryum Styles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CalculationButton: UIButton!
    @IBOutlet weak var arrivalTimeZoneTextField: UITextField!
    @IBOutlet weak var arrivalTimeTextField: UITextField!
    @IBOutlet weak var departureTimeZoneTextField: UITextField!
    @IBOutlet weak var departureTimeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func calculate() {
        let arrivalTime = arrivalTimeTextField.text
    }
}

