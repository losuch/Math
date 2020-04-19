//
//  ViewController.swift
//  Math
//
//  Created by Lukasz Osuch on 19.04.20.
//  Copyright © 2020 Lukasz Osuch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var add1: UITextField!
    @IBOutlet weak var add2: UITextField!
    @IBOutlet weak var sum: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateSum(_ sender: Any) {
        if let number1 = Int(add1.text!), let number2 = Int(add2.text!) {
            sum.text = String(number1 + number2)
        } else {
            print("Error")
        }
    }
    
}

