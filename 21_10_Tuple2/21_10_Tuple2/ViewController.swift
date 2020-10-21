//
//  ViewController.swift
//  21_10_Tuple2
//
//  Created by Lestad on 2020-10-21.
//

import UIKit

class ViewController: UIViewController {
    var nameArray = ["jorge", "Luiz", "Paula", "Melissa", "Eliza","jorge", "Luiz", "Paula", "Melissa", "Eliza", "Luiz", "Paula", "Melissa", "Eliza","Melissa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let produto = getName(name: "Melissa")
        print(produto.name)
        print(produto.loop)
        // Do any additional setup after loading the view.
    }
    func getName(name: String) -> (name: String, loop: Int){
       
        var result = 0
        
        for item in nameArray {
            if item == name {
                result = result + 1
                
            }
        }
        
        return (name: name, loop: result)
        
    }

}

