//
//  ViewController.swift
//  19_10_Closure
//
//  Created by Lestad on 2020-10-19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func registerButton(_ sender: Any) {
        if let viewcontroller = UIStoryboard(name: "Register", bundle: nil).instantiateInitialViewController() as? registerViewController{
            viewcontroller.setCompletion { (email, password) in
                self.emailTextField.text = email
                self.passwordTextField.text = password
            }
            present(viewcontroller, animated: true, completion: nil)
        }
    }
    
}

