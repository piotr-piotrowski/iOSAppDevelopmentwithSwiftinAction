//
//  ViewController.swift
//  ImageViewer
//
//  Created by Piotr Piotrowski on 09/06/2017.
//  Copyright © 2017 Piotr Piotrowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        imageView.center = CGPoint(
            x: imageView.center.x + translation.x
            , y: imageView.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: self.view)
    }

}

