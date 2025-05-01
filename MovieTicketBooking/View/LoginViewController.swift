//
//  LoginViewController.swift
//  MovieTicketBooking
//
//  Created by Purushottam Kumar on 22/04/25.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    
    @IBAction func loginTapped(_ sender: Any) {
        
        guard let email = emailTextField.text, !email.isEmpty,
                      let password = passwordTextField.text, !password.isEmpty else {
                    showAlert(title: "Missing Info", message: "Please enter both email and password.")
                    return
                }

                // Dummy login logic (you can replace with Firebase/API)
        // Check saved user credentials from UserDefaults
        let savedEmail = UserDefaults.standard.string(forKey: "userEmail")
        let savedPassword = UserDefaults.standard.string(forKey: "userPassword")

        if email == savedEmail && password == savedPassword {
            navigateToHome()
        } else {
            showAlert(title: "Login Failed", message: "Invalid email or password.")
        }

    }
    
    @IBAction func signupTapped(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                if let signupVC = storyboard.instantiateViewController(withIdentifier: "SignupViewController") as? SignupViewController {
                    signupVC.modalPresentationStyle = .fullScreen
                    present(signupVC, animated: true, completion: nil)
                }
    }
    
    // MARK: - Helper: Show Alert
        func showAlert(title: String, message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    
    // MARK: - Navigate to Home
    func navigateToHome() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let onboardingVC = storyboard.instantiateViewController(withIdentifier: "OnboardingVC") as? OnboardingVC {
                onboardingVC.modalPresentationStyle = .fullScreen
                self.present(onboardingVC, animated: true, completion: nil)
            }
    }

    
    
    /*
     @IBOutlet weak var passwordTextField: UITextField!
     @IBOutlet weak var passwordTextField: UITextField!
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
