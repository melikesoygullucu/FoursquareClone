//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Melike Soygüllücü on 8.07.2024.
//

import UIKit
import Parse

class SignUpVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      
    }

    @IBAction func signIn(_ sender: Any) {
        if emailTextField.text != "" && passwordTextField.text != "" {
            PFUser.logInWithUsername(inBackground: emailTextField.text!, password: passwordTextField.text!) { succes, error in
                if error != nil {
                    self.alertDialog(title: "Error", message: error?.localizedDescription ?? "Something went wrong, try again!")
                } else {
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                }
            }
        } else {
            self.alertDialog(title: "Error", message: "Fill all the blanks.")
        }
    }
    
    @IBAction func signUp(_ sender: Any) {
        if emailTextField.text != "" && passwordTextField.text != "" {
            let user = PFUser()
            user.username = emailTextField.text!
            user.password = passwordTextField.text!
            user.signUpInBackground { succes, error in
                if error != nil {
                    self.alertDialog(title: "Error", message: error?.localizedDescription ?? "Something went wrong, please try again!")
                } else {
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                }
            }
        } else {
            alertDialog(title: "Error", message: "Please fill all fields correctly!")
        }
    }
    
    func alertDialog(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}

