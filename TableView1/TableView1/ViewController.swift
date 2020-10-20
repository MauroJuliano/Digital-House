//
//  ViewController.swift
//  TableView1
//
//  Created by Lestad on 2020-09-25.
//

import UIKit

class ViewController: UIViewController {
    var arrayCar = ["Volks", "BM", "Monza", "Toyota", "Fiat" ]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate{
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayCar[indexPath.row]
        return cell
    }
    
    
}

