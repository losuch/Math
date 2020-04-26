//
//  DetailViewController.swift
//  Math
//
//  Created by Lukasz Osuch on 24.04.20.
//  Copyright © 2020 Lukasz Osuch. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var detailLabel: UILabel!
    var text = "Hello Math!"
    
//    func configureView() {
//        // Update the user interface for the detail item.
//        if let detail = detailItem {
//            if let label = detailLabel {
//                label.text = detail
//            }
//        }
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        detailLabel.text = text
    }

//    var detailItem: Event? {
//        didSet {
//            // Update the view.
//            configureView()
//        }
//    }
    
}
