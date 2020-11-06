//
//  ViewController.swift
//  imagedownload
//
//  Created by Lestad on 2020-11-04.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://upload.wikimedia.org/wikipedia/en/thumb/4/42/SasukeKishimoto.jpg/220px-SasukeKishimoto.jpg")
        imageView.kf.setImage(with: url)
        // Do any additional setup after loading the view.
    }


}

