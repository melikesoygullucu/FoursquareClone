//
//  PlacesVC.swift
//  FoursquareClone
//
//  Created by Melike Soygüllücü on 10.07.2024.
//

import UIKit

class PlacesVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButton))
    }
    
    @objc func addButton () {
        
    }
    
}
