//
//  ViewController.swift
//  Practice-001
//
//  Created by Soeng Saravit on 5/15/19.
//  Copyright © 2019 KSHRD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextfield: UITextField!
    @IBOutlet weak var lastNameTextfield: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextfield: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statusLabel.textColor = UIColor.red
    }

    @IBAction func signUpButtonAction(_ sender: Any) {
        if firstNameTextfield.text == "" {
            statusLabel.text = "Please input your first name!"
        }else if lastNameTextfield.text == "" {
            statusLabel.text = "Please input your last name!"
        }else if emailTextField.text == "" {
            statusLabel.text = "Please input your email!"
        }else if passwordTextField.text == "" {
            statusLabel.text = "Please input your password"
        }else if (passwordTextField.text?.count)! < 8 {
            statusLabel.text = "Password can not be less than 8 characters"
        }else if confirmPasswordTextfield.text == ""{
            statusLabel.text = "Please input confirm password!"
        }else if passwordTextField.text != confirmPasswordTextfield.text {
            statusLabel.text = "Your password did not match!"
        }else if passwordTextField.text == confirmPasswordTextfield.text{
            statusLabel.textColor = UIColor.green
            statusLabel.text = "Sign Up Success!"
        }
        
    }
    
    @IBAction func clearButtonAction(_ sender: Any) {
        self.firstNameTextfield.text = nil
        self.lastNameTextfield.text = nil
        self.emailTextField.text = nil
        self.passwordTextField.text = nil
        self.confirmPasswordTextfield.text = nil
        self.statusLabel.text = nil
        self.statusLabel.textColor = .red
        
        self.firstNameTextfield.becomeFirstResponder()
    }
}

