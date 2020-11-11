//
//  ViewController.swift
//  11_11_conversordemoedas
//
//  Created by Lestad on 2020-11-11.
//

import UIKit
import Alamofire
enum CurencyType: String {
    case brl = "BRL"
    case usd = "USD"
    
}
class ViewController: UIViewController {
    @IBOutlet var convertorTextField: UITextField!
    @IBOutlet var valorConvertidoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valorConvertidoLabel.isHidden = true
        
    }
    func convertevalor(type: Double?){
        AF.request("https://api.exchangeratesapi.io/latest?symbols=USD,BRL&base=USD").responseJSON { response in
            if let dictionary = response.value as? [String: Any] {
            
              let valorAtual = ConverteMoeda(fromDictionary: dictionary)
                let money = valorAtual.getValue(type: .brl)
                print(money)
            }
        }
    }
    
    
    @IBAction func moedaBase(_ sender: Any) {
        
    }
    
    @IBAction func converterButton(_ sender: Any) {
        convertevalor(type: Double?)
    }
    
}

