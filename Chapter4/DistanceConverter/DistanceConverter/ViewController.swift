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

}

