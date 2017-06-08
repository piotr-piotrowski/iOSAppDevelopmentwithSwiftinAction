//
//  ViewController.swift
//  DistanceConverter
//
//  Created by Piotr Piotrowski on 06/06/2017.
//  Copyright © 2017 Piotr Piotrowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let distance = Distance(miles: 1000)
    @IBOutlet weak var milesTextField: UITextField!
    @IBOutlet weak var kilometersTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        milesTextField.text = "\(distance.miles)"
        kilometersTextField.text = "\(distance.km)"
    }

    @IBAction func convertToKm(_ sender: UIButton) {
        if let miles = Double(milesTextField.text!) {
            distance.miles = miles
            kilometersTextField.text = "\(distance.km)"
        }
    }
    
    @IBAction func convertToMiles(_ sender: UIButton) {
        if let km = Double(kilometersTextField.text!) {
            distance.km = km
            milesTextField.text = "\(distance.miles)"
        }
    }
    
}

