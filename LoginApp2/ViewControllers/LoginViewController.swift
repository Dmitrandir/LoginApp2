//
//  ViewController.swift
//  LoginApp2
//
//  Created by Дмитрий Солопов on 20.08.2022.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginButtonPressed() {
        if loginTF.text != User.getUser().login || passwordTF.text != User.getUser().password {
            showAlert(title: "Login", message: "Invalid")
        }
    }
    
    @IBAction func forgotUserNamePressed() {
        showAlert(title: "Oops!", message: "You name is \(User.getUser().login)")
    }
    
    @IBAction func forgotPasswordRename() {
        showAlert(title: "Oops!", message: "You password is \(User.getUser().password)")
    }
    
}

// MARK: - Alert

extension LoginViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: .none)
        
        alert.addAction(action)
        
        present(alert, animated: true)
    }
}
