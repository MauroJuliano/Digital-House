//
//  AnimalsDetailsController.swift
//  03_10_Exercise2
//
//  Created by Lestad on 2020-10-03.
//

import UIKit

class AnimalsDetailsController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonClosed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    func setup(){
        nameLabel.text = name
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
