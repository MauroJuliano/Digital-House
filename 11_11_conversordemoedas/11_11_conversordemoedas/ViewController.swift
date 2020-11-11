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
    var money: Double?
        
    var convertTo: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        valorConvertidoLabel.isHidden = true
        
    }
    func convertevalor(type: Double?){
        self.money = nil
        AF.request("https://api.exchangeratesapi.io/latest?symbols=USD,BRL&base=USD").responseJSON { response in
            if let dictionary = response.value as? [String: Any] {
              let valorAtualReal = ConverteMoeda(fromDictionary: dictionary)
                
         
            if self.convertTo == "DolarTo" {
                AF.request("https://api.exchangeratesapi.io/latest?symbols=BRL,USD&base=BRL").responseJSON { response in
                    if let dict = response.value as? [String: Any]{
                        
                        let valorAtualUSD = ConverteMoeda(fromDictionary: dict)
                        self.money = valorAtualUSD.getValue(type: .usd)
                        self.showValor(money: self.money, type: type)
            }
        }
            }else{
               
                self.money = valorAtualReal.getValue(type: .brl)
                self.showValor(money: self.money, type: type)
                }
            }
          
        }
    }
    func showValor(money: Double?, type: Double?){
        if self.money != nil {
            let brl: String = String(format: "%.2f", self.money as! CVarArg)
            print("aqui")
            print(brl)
            let valortotal = Double(brl)! * type!
            self.valorConvertidoLabel.text = "R$\(valortotal)"
        }
    }
    @IBAction func moedaBase(_ sender: Any) {
        let alert = UIAlertController(title: "Convertor", message: "Please Select an Option", preferredStyle: .actionSheet)
           
           alert.addAction(UIAlertAction(title: "Real to dolar", style: .default , handler:{ (UIAlertAction)in
            print("DolarTo")
            self.convertTo = "DolarTo"
           }))
           
           alert.addAction(UIAlertAction(title: "Dolar to real", style: .default, handler:{ (UIAlertAction)in
            self.convertTo = "RealTo"
           }))
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler:{ (UIAlertAction)in
              print("User click Dismiss button")
          }))

           self.present(alert, animated: true, completion: {
               print("completion block")
           })
    }
    
    @IBAction func converterButton(_ sender: Any) {
        if convertorTextField.text!.isEmpty || convertorTextField.text == "" {
            
        }else {
            valorConvertidoLabel.isHidden = false
            convertevalor(type: Double(convertorTextField.text!))
        }
        
    }
    
}

