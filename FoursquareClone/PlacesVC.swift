//
//  PlacesVC.swift
//  FoursquareClone
//
//  Created by Melike Soygüllücü on 10.07.2024.
//

import UIKit
import Parse

class PlacesVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButton))
        
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Log out", style: UIBarButtonItem.Style.plain, target: self, action: #selector(logout))
    }
    
    @objc func addButton () {
        
    }
    
    @objc func logout () {
        PFUser.logOutInBackground { error in
            if error != nil {
                
            } else {
                self.performSegue(withIdentifier: "toSignUpVC", sender: nil)
            }
        }
        
    }
    
    func alertDialog(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}
