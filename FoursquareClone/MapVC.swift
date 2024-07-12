//
//  MapVC.swift
//  FoursquareClone
//
//  Created by Melike Soygüllücü on 12.07.2024.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.plain, target: self, action: #selector(saveButton))
        
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(backButton))
    }
    
    @objc func saveButton() {
        
    }
    
    @objc func backButton() {
        self.dismiss(animated: true, completion: nil)
    }

}
