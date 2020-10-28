//
//  ViewController.swift
//  28_10_exercise
//
//  Created by Lestad on 2020-10-28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var comprasTableView: UITableView!
    var comprasArray = [Compras]()
    override func viewDidLoad() {
        super.viewDidLoad()
        comprasArray.append(Compras(name: "cebola"))
        comprasTableView.delegate = self
        comprasTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    @IBAction func openAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Adicionar Item", message: "", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "placeHolder"
            
        })
        let textField = alert.textFields?.first
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let addButton = UIAlertAction(title: "OK", style: .default) { (_) in
            self.addItem(lista: (textField?.text)!)
        }
        alert.addAction(cancelButton)
        alert.addAction(addButton)
        present(alert, animated: true, completion: nil)
    }
    func addItem(lista: String){
        comprasArray.append(Compras(name: lista))
        comprasTableView.reloadData()
    }
}
 
extension ViewController: UITableViewDelegate{
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comprasArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "comprasCell", for: indexPath) as! ComprasTableViewCell
        cell.setup(compras: comprasArray[indexPath.row])
        return cell
    }
    
    
}

