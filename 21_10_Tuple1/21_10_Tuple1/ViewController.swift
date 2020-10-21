//
//  ViewController.swift
//  21_10_Tuple1
//
//  Created by Lestad on 2020-10-21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let product = Price(productValue: 200, percentProfit: 15)
        print(product.valueProfit)
        print(product.productWithProfit)
        // Do any additional setup after loading the view.
    }
    
    func Price(productValue: Double, percentProfit: Double) -> (valueProfit: Double, productWithProfit: Double){
        let valueProfit = (productValue * percentProfit) / 100
        let productWithProfit = productValue + valueProfit
        
        return  (valueProfit: valueProfit, productWithProfit: productWithProfit)
    }

}

