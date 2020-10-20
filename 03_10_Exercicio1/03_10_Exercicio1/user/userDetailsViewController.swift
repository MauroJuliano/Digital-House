//
//  userDetailsViewController.swift
//  03_10_Exercicio1
//
//  Created by Lestad on 2020-10-03.
//

import UIKit

class userDetailsViewController: UIViewController {
    @IBOutlet weak var userLabel: UILabel!
    var name: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()

        // Do any additional setup after loading the view.
    }
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setup(){
        userLabel.text = name
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
