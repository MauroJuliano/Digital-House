//
//  CarroDetailsViewController.swift
//  03_10_Exercise3
//
//  Created by Lestad on 2020-10-03.
//

import UIKit

class CarroDetailsViewController: UIViewController {
    @IBOutlet weak var CarroImageView: UIImageView!
    var images: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }
    func setup(){
        CarroImageView.image = UIImage(named: images!)
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
