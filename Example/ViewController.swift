//
//  ViewController.swift
//  Example
//
//  Created by Nehal Elsawaf on 2/16/19.
//  Copyright © 2019 Yehia Elbehery. All rights reserved.
//

import UIKit
import UserSettingsManipulator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func userSettings(){
        UserSettingsManipulator.shared.launch(inViewController: self)
    }
}

