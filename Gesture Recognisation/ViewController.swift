//
//  ViewController.swift
//  Gesture Recognisation
//
//  Created by Smeet Bhatt on 17/10/17.
//  Copyright © 2017 Smeet Bhatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.isUserInteractionEnabled = true
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.changeImage))
        imageView.addGestureRecognizer(gesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func changeImage() {
        if count == 0 {
            imageView.image = UIImage(named: "volleyball.jpg")
            label.text = "VOLLEYBALL"
            count = 1
        }
        else {
            imageView.image = UIImage(named: "basketball.jpg")
            label.text = "BASKETBALL"
            count = 0
        }
    }

}

