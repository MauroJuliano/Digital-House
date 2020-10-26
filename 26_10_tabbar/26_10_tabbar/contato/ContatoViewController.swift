//
//  ContatoViewController.swift
//  26_10_tabbar
//
//  Created by Lestad on 2020-10-26.
//

import UIKit

class ContatoViewController: UIViewController {
    
    @IBOutlet weak var contatoTableview: UITableView!
    var contato = [Contato]()
    override func viewDidLoad() {
        super.viewDidLoad()
        contato.append(Contato(telefone: "XXXX-XXXX", email: "jorge@email.com", site: "xxxx.com.br", avalie: "⭐️⭐️⭐️"))
        contato.append(Contato(telefone: "XXXX-XXXX", email: "henrique@email.com", site: "xxxx.com.br", avalie: "⭐️⭐️⭐️⭐️"))
        contato.append(Contato(telefone: "XXXX-XXXX", email: "paula@email.com", site: "xxxx.com.br", avalie: "⭐️"))
        contato.append(Contato(telefone: "XXXX-XXXX", email: "jorgina@email.com", site: "xxxx.com.br", avalie: "⭐️⭐️"))
        contato.append(Contato(telefone: "XXXX-XXXX", email: "jorgisclei@email.com", site: "xxxx.com.br", avalie: "⭐️⭐️⭐️⭐️⭐️"))
        contatoTableview.delegate = self
        contatoTableview.dataSource = self
        contatoTableview.reloadData()
        // Do any additional setup after loading the view.
    }
}
extension ContatoViewController: UITableViewDelegate{
    
}
extension ContatoViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contato.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contatoCell", for: indexPath) as! contatoTableViewCell
        cell.setup(contato: contato[indexPath.row])
        return cell
    }
    
    
}
