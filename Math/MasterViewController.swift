//
//  MasterViewController.swift
//  Math
//
//  Created by Lukasz Osuch on 24.04.20.
//  Copyright © 2020 Lukasz Osuch. All rights reserved.
//

import UIKit

class MasterViewController : UITableViewController {
    
    var detailViewController: DetailViewController? = nil
    let operations = Array<String>.init(arrayLiteral: "Addition", "Subtraktion")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // prepare detailViewController for seguey
        if let split = splitViewController {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.operations[indexPath.row]
        return cell
    }
    
    // insert value from MasterViewController into DetailViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.text = operations[indexPath.row]
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
                detailViewController = controller
            }
        }
    }
}
