//
//  AddPlaceVC.swift
//  FoursquareClone
//
//  Created by Melike Soygüllücü on 11.07.2024.
//

import UIKit

class AddPlaceVC: UIViewController {

    
    @IBOutlet weak var placeNameTextField: UITextField!
    
    @IBOutlet weak var placeTypeTextField: UITextField!
    
    @IBOutlet weak var placeExplanationTextField: UITextField!
    
    @IBOutlet weak var placeImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(_ sender: Any) {
        performSegue(withIdentifier: "toMapVC", sender: nil)
    }
    
}
