//
//  ViewController.swift
//  snippet
//
//  Created by Lestad on 2020-10-28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openActionSheet(_ sender: AnyObject) {

        
            let alert = UIAlertController(title: "Atenção",
                                          message: "Escolha a opção",
                                          preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Coxinha", style: .default, handler: { (action) in
                print("Coxinha")
            }))
            alert.addAction(UIAlertAction(title: "Kibe", style: .default, handler: { (action) in
                print("Kibe")
            }))
            alert.addAction(UIAlertAction(title: "Risoles", style: .default, handler: { (action) in
                print("Risoles")
            }))
            alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
                print("Cancelar")
            }))
            alert.addAction(UIAlertAction(title: "Nenhuma, ainda é cedo", style: .destructive, handler: { (action) in
                print("Nenhuma")
            }))
            
       
            present(alert, animated: true, completion: nil)
        }
    
}
extension UIViewController {
  public func addActionSheetForiPad(actionSheet: UIAlertController) {
    if let popoverPresentationController = actionSheet.popoverPresentationController {
      popoverPresentationController.sourceView = self.view
      popoverPresentationController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
      popoverPresentationController.permittedArrowDirections = []
    }
  }
}

