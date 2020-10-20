//
//  ViewController.swift
//  16_10_Gesture
//
//  Created by Lestad on 2020-10-16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var tapGestureView: UIView!
    @IBOutlet weak var longPressGestureView: UIView!
    @IBOutlet weak var swipeGestureView: UIView!
    var num = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(oneTap))
        tapGestureView.addGestureRecognizer(tap)
        
        let long = UILongPressGestureRecognizer(target: self, action: #selector(longPress))
        longPressGestureView.addGestureRecognizer(long)
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeGesture))
        swipeGestureView.addGestureRecognizer(swipe)
        // Do any additional setup after loading the view.
    }
    @objc func oneTap(_ tapGesture: UITapGestureRecognizer){
            
        num = num + 1
        numLabel.text = String(num)
    }
    
    @objc func longPress(_ tapGesture: UILongPressGestureRecognizer){
        num = num + 1
        numLabel.text = String(num)
    }
    @objc func swipeGesture(_ tapGesture: UISwipeGestureRecognizer){
        num = num - 1
        numLabel.text = String(num)
    }

}

