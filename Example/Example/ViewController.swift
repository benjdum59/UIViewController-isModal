//
//  ViewController.swift
//  Example
//
//  Created by Benjamin Dumont on 12/02/2016.
//  Copyright © 2016 benjdum59. All rights reserved.
//

import UIKit
import UIViewController_isModal



class ViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var valueLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if self.isModal {
            valueLabel.text = "TRUE"
        } else {
            valueLabel.text = "FALSE"
        }
        closeButton.hidden = !self.isModal
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func close(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

