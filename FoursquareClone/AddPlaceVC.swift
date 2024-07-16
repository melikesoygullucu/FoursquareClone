//
//  AddPlaceVC.swift
//  FoursquareClone
//
//  Created by Melike Soygüllücü on 11.07.2024.
//

import UIKit

class AddPlaceVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var placeNameTextField: UITextField!
    @IBOutlet weak var placeTypeTextField: UITextField!
    @IBOutlet weak var placeExplanationTextField: UITextField!
    @IBOutlet weak var placeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        placeImageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        placeImageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func selectImage() {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        self.present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        placeImageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        if placeNameTextField.text != "" && placeTypeTextField.text != "" && placeExplanationTextField.text != "" {
            if let chosenImage = placeImageView.image {
                let placeModel = PlaceModel.sharedInstance
                placeModel.placeName = placeNameTextField.text!
                placeModel.placeType = placeTypeTextField.text!
                placeModel.placeExplanation = placeExplanationTextField.text!
                placeModel.placeImage = chosenImage
            }
            performSegue(withIdentifier: "toMapVC", sender: nil)
        } else {
            alertDialog(title: "Error", message: "Please fill al the blanks")
        }
       
        
        
    }
    
    func alertDialog(title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}
