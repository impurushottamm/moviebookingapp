//
//  SignupViewController.swift
//  MovieTicketBooking
//
//  Created by Purushottam Kumar on 22/04/25.
//

import UIKit

class SignupViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerNowTapped(_ sender: Any) {
        guard let name = nameTextField.text, !name.isEmpty,
                      let email = emailTextField.text, !email.isEmpty,
                      let password = passwordTextField.text, !password.isEmpty,
                      let confirmPassword = confirmPasswordTextField.text, !confirmPassword.isEmpty else {
                    showAlert(title: "Missing Info", message: "Please fill in all fields.")
                    return
                }

                guard password == confirmPassword else {
                    showAlert(title: "Password Mismatch", message: "Passwords do not match.")
                    return
                }

                // Store user data temporarily using UserDefaults (for demo only)
                UserDefaults.standard.set(email, forKey: "userEmail")
                UserDefaults.standard.set(password, forKey: "userPassword")
                UserDefaults.standard.set(name, forKey: "userName")

                showAlert(title: "Success", message: "Registration Successful!") {
                    self.dismiss(animated: true)
                }
    }
    
    
    @IBAction func backToLoginTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Reusable Alert
        func showAlert(title: String, message: String, completion: (() -> Void)? = nil) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                completion?()
            }
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
