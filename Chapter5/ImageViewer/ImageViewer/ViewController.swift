//
//  ViewController.swift
//  ImageViewer
//
//  Created by Piotr Piotrowski on 09/06/2017.
//  Copyright © 2017 Piotr Piotrowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let images = ["CradleMountain.JPG", "Laguna69.JPG", "PatagoniaSky.JPG"]
    var imageNo = 0

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        tapGestureRecognizer.numberOfTouchesRequired = 1
        tapGestureRecognizer.numberOfTapsRequired = 2
        imageView.addGestureRecognizer(tapGestureRecognizer)
    }

    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        imageView.center = CGPoint(
            x: imageView.center.x + translation.x
            , y: imageView.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: self.view)
    }

    @IBAction func handlePinch(_ sender: UIPinchGestureRecognizer) {
        imageView.transform = imageView.transform.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1
    }
    
    @IBAction func handleRotate(_ sender: UIRotationGestureRecognizer) {
        imageView.transform = imageView.transform.rotated(by: sender.rotation)
        sender.rotation = 0
    }
    
    func handleTap(_ sender: UITapGestureRecognizer) {
        imageNo += 1
        if imageNo == images.count { imageNo = 0 }
        imageView.image = UIImage(named: images[imageNo])
    }
    
}

extension ViewController:UIGestureRecognizerDelegate {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}

