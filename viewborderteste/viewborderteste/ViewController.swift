//
//  ViewController.swift
//  viewborderteste
//
//  Created by Lestad on 2020-10-22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myview = UIView(frame: CGRect(x: 0, y: 0, width: 89, height: 169))
        //89 / 160
        myview.layer.borderWidth = 10
        myview.layer.borderColor = UIColor.red.cgColor
        view.addSubview(myview)
        // Do any additional setup after loading the view.
    }


}
extension UIColor {
    static func rainbowIterator(...) -> AnyIterator<UIColor> {
      return AnyIterator {
          // Do some Maths to calculate the next color
          return ... // return next UIColor in sequence
    }
    static func rainbowSequence( ... ) -> AnySequence<UIColor> {
      return AnySequence(rainbowIterator( ... ))
    }
  }

