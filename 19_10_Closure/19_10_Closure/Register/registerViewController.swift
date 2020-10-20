//
//  registerViewController.swift
//  19_10_Closure
//
//  Created by Lestad on 2020-10-19.
//

import UIKit

class registerViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var onComplete: ((_ email: String, _ password: String) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func setCompletion(onComplete: @escaping (_ email: String, _ password: String) -> Void) {
        self.onComplete = onComplete
    }
    @IBAction func registerButton(_ sender: Any) {
        onComplete?(emailTextField.text!, passwordTextField.text!)
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
