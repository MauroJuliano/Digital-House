//
//  ViewController.swift
//  21_10Animated
//
//  Created by Lestad on 2020-10-21.
//

import UIKit

class ViewController: UIViewController {
    let newView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        addViewAndAnimated()
    }
    func addViewAndAnimated(){
        let newView = UIView(frame: CGRect(x: 20, y: 40, width: 50, height: 50))
        newView.backgroundColor = .random()
        view.addSubview(newView)
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
                                         
        newView.addGestureRecognizer(tap)
    }
   
    @objc func handleTap(_ sender: UITapGestureRecognizer){
        let otherView = UIView(frame: CGRect(x: 20, y: 93, width: 50, height: 50))
        otherView.backgroundColor = .random()
        view.addSubview(otherView)
        let tap = UITapGestureRecognizer(target: self, action: #selector(secondTap(_:)))
                                         
        otherView.addGestureRecognizer(tap)
    }
    @objc func secondTap(_ sender: UITapGestureRecognizer){
        let thirdView = UIView(frame: CGRect(x: 20, y: 144, width: 50, height: 50))
        thirdView.backgroundColor = .random()
        view.addSubview(thirdView)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(lastTap(_:)))
                                         
        thirdView.addGestureRecognizer(tap)
    }
    @objc func lastTap(_ sender: UITapGestureRecognizer){
        let centerView = UIView(frame: CGRect(x: 150, y: 400, width: 100, height: 100))
        centerView.backgroundColor = .cyan
        view.addSubview(centerView)
        UIView.animate(withDuration: 1){
            centerView.frame = self.view.frame
        }completion: { (true) in
            centerView.backgroundColor = .white
            
            for view in self.view.subviews{
                view.removeFromSuperview()
            }
            self.addViewAndAnimated()
        }
        
    }
}
extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}

