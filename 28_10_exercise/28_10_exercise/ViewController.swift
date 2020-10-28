//
//  ViewController.swift
//  28_10_exercise
//
//  Created by Lestad on 2020-10-28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var comprasTableView: UITableView!
    var listaArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        listaArray.append("Digital House")
        listaArray.append("Gesica")
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
        listaArray.append(lista)
        comprasTableView.reloadData()
    }
}
 
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let yo = tableView.indexPathForSelectedRow
        let selectedItem = indexPath
        print(selectedItem.row)
        let cell = tableView.cellForRow(at: yo!) as? ComprasTableViewCell
        let itemList = cell?.nameLabel.text
        
        let alert = UIAlertController(title: "Opcoes", message: "", preferredStyle: .alert)
            
            let editButton = UIAlertAction(title: "Editar", style: .default) { (_) in
           
            let edit = UIAlertController(title: "Adicionar Item", message: "", preferredStyle: .alert)
            edit.addTextField(configurationHandler: { textField in
                textField.placeholder = "\(itemList!)"
                textField.text = "\(itemList!)"
            })
            let textField = edit.textFields?.first
            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            let addButton = UIAlertAction(title: "OK", style: .default) { (_) in
                if textField?.text == nil || textField?.text == ""{
                    
                }else {
                    self.editItem(editar: (textField?.text)!, selected: selectedItem.row)
                }
            }
            edit.addAction(cancelButton)
            edit.addAction(addButton)
            self.present(edit, animated: true, completion: nil)
        }

        let completeButton = UIAlertAction(title: "Concluido", style: .destructive) { (_) in
            self.listaArray.remove(at: selectedItem.row)
            self.comprasTableView.reloadData()
        }
        let cancelButton = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alert.addAction(cancelButton)
        alert.addAction(completeButton)
        alert.addAction(editButton)
        present(alert, animated: true, completion: nil)
    }
    func editItem(editar: String, selected: Int){
        self.listaArray[selected] = editar
        comprasTableView.reloadData()
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "comprasCell", for: indexPath) as! ComprasTableViewCell

        cell.nameLabel.text = listaArray[indexPath.row]
        return cell
    }
    
    
}

