//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Melike Soygüllücü on 8.07.2024.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       /* let parseObject = PFObject(className: "Fruits")
        parseObject["name"] = "Banana"
        parseObject["calories"] = 150
        parseObject.saveInBackground { succes, error in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                print("uploaded")
            }
        }*/
        
        let query = PFQuery(className: "Fruits")
        query.whereKey("calories", equalTo: 150)
        query.findObjectsInBackground { objects, error in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                print(objects)
            }
        }
    }


}

