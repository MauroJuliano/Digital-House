//
//  CarDetailViewController.swift
//  26_10_tabbar
//
//  Created by Lestad on 2020-10-26.
//

import UIKit

class CarDetailViewController: UIViewController {
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var carNameLabel: UILabel!
    var carDetail: Car?
    override func viewDidLoad() {
       // navigationController?.navigationBar.isHidden = false
        super.viewDidLoad()
       
        carImageView.image = UIImage(named: "\(carDetail!.image)")
        carNameLabel.text = carDetail?.name
        // Do any additional setup after loading the view.
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
